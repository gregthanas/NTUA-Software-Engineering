import React, {Component} from 'react';
import { browserHistory } from 'react-router';
import { Alert, Row } from 'reactstrap';
import Search from '../helper_components/searchComponent';
import NavBarClass from '../helper_components/navbar';
import ReactPlayer from 'react-player';


class SearchPage extends Component {
    constructor(props) {
        super(props);
        this.state = {search: null, success: null, error: null, not_found: null};
        this.handleSubmit = this.handleSubmit.bind(this);
        this._isMounted = null;
        this.url = "https://www.youtube.com/watch?v=1hvzLV274Rg";
    }
    
    componentWilldUnmount() {
        if (this._isMounted) {
            this._isMounted.cancel();
        }
    }
    
    async handleSubmit () {
        this._isMounted = await this.setState({search: {
                                    sort_distance: this.refs.search.sort_distance,
                                    sort_price: this.refs.search.sort_price,
                                    sort_date: this.refs.search.sort_date,
                                    datefrom: this.refs.search.datefrom,
                                    dateto: this.refs.search.dateto,
                                    category: this.refs.search.category,
                                    tags: this.refs.search.tags,
                                    price: this.refs.search.price, 
                                    geodist: this.refs.search.geodist}});

        browserHistory.push({
            pathname: '/results',
            state: this.state.search
        });
    }
    
    render() {
        return (
            <div>
                <NavBarClass/>
                <Alert color="danger" isOpen={this.state.error===true}>Πρόβλημα με τη σύνδεση. Δοκιμάστε ξανά.</Alert>
               <br></br>
                <div className="header"><img src={"/logo_transparent.png"} alt="logo" /></div>
                <br></br>
                <Search ref="search" handle={this.handleSubmit} params={[]}/>
                <Row className="justify-content-center">
                    <ReactPlayer url={this.url} playing/>
                </Row>

            

            </div>
        );
    }
}

export default SearchPage;