import React, { Component } from "react";
import { HashRouter, Switch, Route } from "react-router-dom";
import Charities from "./../../Charities/components/Charities";
require('./main.scss');

class App extends Component {
  render() {
    return (
      <HashRouter>
        <Switch>
          <Route exact path='/' component={Home}/>
          <Route path='/charities' component={Charities}/>
        </Switch>
      </HashRouter>
    );
  }
}

const Home = () => (
  <div>
    <div>
      <p></p>
    </div>
    <header className="subnav-hero-section">
      <h1 className="subnav-hero-headline">
        Doe Aqui!<br></br>
        <i className="fa fa-heart-o" aria-hidden="true"></i>
      </h1>
      <ul className="subnav-hero-subnav">
        <li><a href="#" className="is-active">Onde doar</a></li>
        <li><a href="#">Sobre</a></li>
      </ul>
    </header>
  </div>
);

export default App;
