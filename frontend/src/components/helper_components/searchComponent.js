import React, { Component } from "react";
import {Categories} from './categories_search';
import { Col, InputGroupAddon, InputGroup, Row, Button, Form, Input, FormText} from 'reactstrap';
import Range from './range';
import SortPrice from '../helper_components/sort_price';
import SortDistance from '../helper_components/sort_distance';
import SortDate from '../helper_components/sort_date';

function onlyUnique (value, index, self) { 
    return self.indexOf(value) === index;
}

export class Search extends Component {
    constructor(props) {
        super(props);
        this.state = {price: 50, params: null, geodist: null, tags: null};
        this.updateRange = this.updateRange.bind(this); 
        this.handleSubmit = this.handleSubmit.bind(this);
        this.filters = this.filters.bind(this);
        this.handleChange = this.handleChange.bind(this);
        this.sort_distance = null;
        this.sort_date = null;
        this.sort_price = null;
        this.category = null;
        this.geodist = null;
        this.datefrom = null;
        this.dateto = null;
        this.price = 50;      
    }
    
    componentDidMount() {
        if (this.props.params) {
            if (this.props.params.geodist) this.setState({geodist: this.props.params.geodist});
            if (this.props.params.tags) this.setState({tags: this.props.params.tags.join(', ')});
            
            if (this.props.params.price) {
                this.price = this.props.params.price;
                this.setState({price: this.props.params.price});
            }
        }
    }
    
    filters () {
        this.sort_distance = this.refs.sort_distance.state.sort;
        this.sort_date = this.refs.sort_date.state.sort;
        this.sort_price = this.refs.sort_price.state.sort;
        if ( this.refs.search_category.state.category === 'Όλες οι κατηγορίες'){
            this.category = null;
        }
         else{
             this.category = this.refs.search_category.state.category;
         }
        this.geodist = document.getElementById('search_geodist').value;
        this.datefrom = document.getElementById('search_datefrom').value;
        this.dateto = document.getElementById('search_dateto').value;
        this.props.handle();
    }
    
    handleChange(event) {
        var name = event.target.name;
        this.setState({[name]: event.target.value});
    }
    
    updateRange (val) {
        this.setState({
            price: val
        });
        this.price = val;
    }
    
    handleSubmit (event) {
        event.preventDefault();
        event.nativeEvent.stopImmediatePropagation();
        
        var tags_list = (document.getElementById('search_tags').value).split(',');
        
        var tags = [];
        tags_list = tags_list.filter(onlyUnique);
        for (var i=0; i<tags_list.length; i++) {
            var temp = tags_list[i].replace(/\s+/g,' ').trim();
            if (temp === "") continue;
            tags.push(temp);
        }

        tags = tags.filter( onlyUnique );
        if (tags.length > 0) {
            if (tags[0] === "") {
                tags = [];
            }
        }
        
        this.tags = tags;
        this.filters();
    }
    
    render() {
        if (this.props.params) {
            if (this.props.params.datefrom){
                var from = new Date(this.props.params.datefrom);
                var datefrom = from.toISOString().substr(0,10);
            }
            if (this.props.params.dateto) {
                var to = new Date(this.props.params.dateto);
                var dateto = to.toISOString().substr(0,10);
            }
        }
        var curr = new Date();
        curr.setUTCDate(curr.getDate());
        var date = curr.toISOString().substr(0,10);
        return ( 
            <div className="group_search" >
                <Form>
                        <InputGroup id="home-search">
                            <Input id="search_tags" placeholder="Αναζήτηση με χαρακτηριστικά..." name="tags" onChange={this.handleChange} value={this.state.tags ? this.state.tags : ''}></Input>
                            <Categories id="categ_ex" ref='search_category' default={this.props.params ? this.props.params.category : null}/>
                            <InputGroupAddon addonType="append">
                                <Button className="btn btn-default" id="search_btn" onClick={this.handleSubmit}>
                                    Αναζήτηση
                                </Button>
                            </InputGroupAddon>
                        </InputGroup>
                        <FormText>Διαχωρισμός χαρακτηριστικών με κόμμα (,)</FormText>
                </Form> 
                <div className="Search filters_section">
                <Form>

                <Row >
                    <Col>
                        <span>Ταξινόμηση</span>
                        <SortPrice ref="sort_price" id="sort_p" default={this.props.params ? this.props.params.sort_price : null}/>
                        <SortDistance ref="sort_distance" id="sort_dist" default={this.props.params ? this.props.params.sort_distance : null}/>
                        <SortDate ref="sort_date" id="sort_date" default={this.props.params ? this.props.params.sort_date : null}/>
                    </Col>
                    
                    <Col>
                        <span>Εύρος Ημερομηνιών</span>
                        <div className="input-group">
                            <div className="input-group-prepend">
                                <span className="input-group-text">Από:</span>
                            </div>
                            <Input className="form-control" type="date" id="search_datefrom" name="datefrom" defaultValue={this.props.params && datefrom ? datefrom : date} />
                        </div>
                        <div className="input-group">
                            <div className="input-group-prepend">
                                <span className="input-group-text">Έως:</span>
                            </div>
                            <Input className="form-control" type="date" id="search_dateto" name="dateto" defaultValue={this.props.params && dateto ? dateto : date} />
                        </div>
                    </Col>
                    <Col>
                        <span>Άλλα Φίλτρα</span>
                            <InputGroup id="dist">
                                <Input placeholder="Απόσταση" type="text" id="search_geodist" pattern="[0-9]+" name="geodist" onChange={this.handleChange} value={this.state.geodist ? this.state.geodist : ''}/>
                                <InputGroupAddon addonType="append">km</InputGroupAddon>
                            </InputGroup>
                        <div className="input-group">
                            <span>Τιμή:</span>
                            <Range range={this.state.price} id="maxp" updateRange={this.updateRange}/>
                        </div>
                    </Col>
                </Row> 

                <Button color="secondary" size="sm" block onClick={this.handleSubmit}>Εφαρμογή φίλτρων</Button>
                </Form>
                </div>
            </div>
        );
    }
};

export default Search;
    

