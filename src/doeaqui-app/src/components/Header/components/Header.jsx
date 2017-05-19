import React, { Component } from "react";
import FontAwesome from 'react-fontawesome';

class Header extends Component {
  renderTabItem(link, text) {
    let className = "nav-item";
    const currentPath = window.location.pathname;
    if(currentPath === link) {
      className += " is-active";
    }
    return (
      <a className={className} href={link}>
        {text}
      </a>
    );
  }

  render() {
    return (
      <div>
        <nav className="top-bar nav has-shadow" id="top">
          <div className="container">
            <div className="nav-left">
              <a className="nav-item">
                <h1 className="title">Doe<FontAwesome name='heart-o' />Aqui</h1>
              </a>
            </div>
          <span className="nav-toggle">
            <span></span>
            <span></span>
            <span></span>
          </span>
          <div className="nav-right nav-menu">
            {this.renderTabItem("/", "Onde doar")}
            {this.renderTabItem("/about", "Sobre")}
            <a className="nav-item" href="https://github.com/lucmir/doeaqui" target="_blank">
              <span className="icon"> <i className="fa fa-github"></i> </span>
            </a>
          </div>
          </div>
        </nav>
      </div>
    );
  }
}

export default Header;
