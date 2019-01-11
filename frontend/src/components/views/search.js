/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCartPlus } from '@fortawesome/free-solid-svg-icons';
import { browserHistory } from 'react-router';
import MapClass from './map';
import cookie from 'react-cookies';
import {Settings} from './dropdown_settings';
import { NavbarBrand, Navbar, Nav, NavItem, NavLink, Input, InputGroupAddon, Button, Form, InputGroup, FormGroup, Label, NavbarToggler } from 'reactstrap';
import {send_to_server} from './send';
import {receive_from_server} from './receive';
import ProductsTable from './results_products_table';
import Search from './searchComponent';

class SearchPage extends Component {
    constructor(props) {
        super(props);
        this.state = {price: 50, show_map: false, username: cookie.load('username'), products: [], results: false};
        this.handleSubmit = this.handleSubmit.bind(this);
        this.only_nearby_shops = this.only_nearby_shops.bind(this);
        this.updateRange = this.updateRange.bind(this);
        this.newprice = this.newprice.bind(this);
        this.request_prices = this.request_prices.bind(this);
    }
    
    request_prices () {
        console.log(this.refs.results_products.id);
    }
    
    componentDidMount() {
        try {
            var loggedin = Boolean(cookie.load('loggedin'));
            if (!loggedin) {
                browserHistory.push('/login');
            }
            cookie.save('need_login', true, {path: '/'});
        }
        catch(error) {
            console.log(error);
        }
    }
    
    updateRange (val) {
        this.setState({
            price: val
        });
    } 
    
    newprice () {
        browserHistory.push('/addprice');
    }
  
    only_nearby_shops () {
        //TODO send request
    }
    
    async handleSubmit (event) {
        event.preventDefault();
        event.nativeEvent.stopImmediatePropagation();
        const search = document.getElementById('search').value;
        const category = this.refs.search.refs.search_category.state.category;
        
        var body = {
            search,
            category
        };
        
        console.log(body);
        const url = 'http://localhost:3002/products';
        const answer = await receive_from_server(url);
        if (answer.status === 200) {
            this.setState({success: true});
        }
        else {
            this.setState({error: true});
        }
        var products = await answer.json().then((result) => {return result.products});
        console.log(products);
        
        this.setState({results: true, show_map: !this.state.show_map, products: products});
    }
    
    render() {
        return (
            <div>
                <Navbar color="faded" light>
                <NavbarBrand><Settings/></NavbarBrand>
                    <Nav className="ml-auto" navbar>
                        <NavItem>
                            <NavLink onClick={() => this.newprice()}><FontAwesomeIcon icon={faCartPlus}></FontAwesomeIcon> Προσθήκη Νέας Τιμής</NavLink>
                        </NavItem>
                    </Nav>
                </Navbar>
                
                 <div className="col-md-6 col-md-offset-3">
                    <img src={"/public/logo_transparent.png"} alt="logo" />
                    <Search ref="search" price={this.state.price} handle={this.handleSubmit} updateRange={this.updateRange}/>
                </div>
                <div>
                    {this.state.results
                    ? <ProductsTable ref="results_products" max_price={this.state.price} products={this.state.products} onClick={this.request_price}/>
                    : null
                    }
                    <div >
                        {this.state.show_map
                            ?<MapClass/>
                            : null
                        }
                    </div>
                </div>
            </div>
        );
    }
}

export default SearchPage;