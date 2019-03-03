/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import React from 'react';
import { Popover, PopoverHeader, PopoverBody } from 'reactstrap';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faWineBottle } from '@fortawesome/free-solid-svg-icons';

const options = [
            {name: 'Άλλο', value: 'all'},
            {name: 'Αναψυκτικά', value: 'beverages'},
            {name: 'Χωρίς Αλκοόλ', value: 'nonalchool'},
            {name: 'Βότκα', value: 'vodka'},
            {name: 'Κονιάκ', value: 'koniak'},
            {name: 'Τζιν', value: 'gin'},
            {name: 'Κρασί', value: 'wine'},
            {name: 'Λικέρ', value: 'liquer'},
            {name: 'Μπύρες', value: 'beer'},
            {name: 'Ούζο', value: 'ouzo'},
            {name: 'Ουίσκι', value: 'whiskey'},
            {name: 'Ρούμι', value: 'rum'},
            {name: 'Τεκίλα', value: 'tequila'},
            {name: 'Τσίπουρο', value: 'tsipouro'},
            {name: 'Σνακς', value: 'snacks'}           
        ];
        
export default class ProductInfo extends React.Component {
    constructor(props) {
        super(props);
        this.toggle = this.toggle.bind(this);
        this.state = {
            popoverOpen: false
        };
        this.category = null;
        for (var i in options) {
            if (options[i].value === this.props.price.category) this.category = options[i].name; 
        }
    }
    
    toggle() {
        this.setState({
            popoverOpen: !this.state.popoverOpen
        });
    }

    render() {
        return (
            <div>
                <button className="search_btn" id={"product_btn" + this.props.price.id} title='Πληροφορίες προϊόντος'>
                    <FontAwesomeIcon icon={faWineBottle}></FontAwesomeIcon>
                </button>
                <Popover placement="bottom" isOpen={this.state.popoverOpen} target={"product_btn" + this.props.price.id} toggle={this.toggle}>
                    <PopoverHeader>Πληροφορίες Προϊόντος</PopoverHeader>
                    <PopoverBody>
                        <strong>Barcode: </strong>
                        {this.props.price.barcode}<br/>
                        <strong>Όνομα: </strong>
                        {this.props.price.productName}<br/>
                        <strong>Μάρκα: </strong>
                        {this.props.price.brand}<br/>
                        <strong>Όγκος: </strong>
                        {this.props.price.volume}ml<br/>
                        <strong>Κατηγορία: </strong>
                        {this.category}<br/>
                        <strong>Χαρακτηριστικά: </strong>
                        {this.props.price.productTags.join(', ')}<br/>
                        <strong>Περιγραφή: </strong>
                        {this.props.price.description}<br/>
                        {this.props.price.productWithdrawn 
                        ? <p className='withdrawnShop'> Αποσυρθέν </p>
                        : <p className='activeShop'> Ενεργό </p>
                        }
                    </PopoverBody>
                </Popover>
            </div>
        );
    }
}

