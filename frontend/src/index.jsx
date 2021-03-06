import React from 'react';
import ReactDom from 'react-dom';

import { Router, browserHistory } from 'react-router';
import routes from './routes';

import 'bootstrap/dist/css/bootstrap.css';

require('./stylesheets/base.scss');
require('./stylesheets/register.scss');
require('./stylesheets/search.scss');
require('./stylesheets/bootstrap.min.css');
require('./stylesheets/bootstrap.scss');
require('./stylesheets/login.scss');
require('./stylesheets/addshop.scss');
require('./stylesheets/addprice.scss');
require('./stylesheets/new_product.scss');
require('./stylesheets/editshop.scss');
require('./stylesheets/editproduct.scss');

window.http = "https://localhost:8765/observatory/api";

ReactDom.render(
  <Router history={browserHistory} routes={routes} />,
  document.querySelector('#app')
);
