/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import React, { Component } from "react";
import {receive_from_server} from '../communication/receive';
import { browserHistory } from 'react-router';
import cookie from 'react-cookies';
import {Settings} from '../helper_components/dropdown_settings';
import PapigationResults from '../helper_components/all_products_papigation';
import { Navbar, Nav, NavItem, NavLink, Button, NavbarBrand, Image, Alert } from 'reactstrap';

export class AllProducts extends Component {
    constructor(props) {
        super(props);
        this.id = null;
        this.select = this.select.bind(this);
        this.request = this.request.bind(this);
        this.state = {products: null};
        this.homepage = this.homepage.bind(this);
        this.search = this.search.bind(this);
        this.edit = this.edit.bind(this);
        this.delete = this.delete.bind(this);
    }
    
    componentDidMount () {
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
        
        this._asyncRequest = this.request().then(
            products => {
                this._asyncRequest = null;
                this.setState({products});
            }
        );
    }
    
    componentWilldUnmount() {
        if (this._asyncRequest) {
            this._asyncRequest.cancel();
        }
    }

    async request() {
        const url = 'http://localhost:3002/products';
        const answer = await receive_from_server(url);
        
        if (answer === 'error') {
            this.setState({error: true});
            return;
        }
        
        if (answer.status === 200) {
            this.setState({success: true});
        }
        else {
            this.setState({not_found: true});
        }
        
        var products = await answer.json().then((result) => {return result.products;});
        console.log(products);
        this.setState({products: products});
        return products;
    }
    
    edit (id) {
        this.id = id;
        console.log(this.id);
    }
    
    delete (id) {
        this.id = id;
        console.log(this.id);
    }
    
    search (id) {
        this.id = id;
        console.log(this.id);
    }
    
    select (id) {
        this.id = id;
        console.log(this.id);
    }
    
    homepage() {
        browserHistory.push('/search');
    }
    
    render() {
       return (
            <div>
            <Navbar color="faded" light>
                <NavbarBrand><img src={"/public/logo_transparent.png"} width="150px" onClick={() => this.homepage()}/></NavbarBrand>
                <Nav className="ml-auto" navbar>
                    <NavItem>
                        <NavLink><Settings/></NavLink>
                    </NavItem>
                </Nav>
            </Navbar>
            {this.state.products === null
            ?<div> Loading </div>
            : <PapigationResults data={this.state.products} select={this.select} delete={this.delete} edit={this.edit} search={this.search}/>
            }
        </div>
        );
    }
};

export default AllProducts;
    
