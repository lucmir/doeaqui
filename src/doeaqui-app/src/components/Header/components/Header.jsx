import React, { Component } from "react";
import FontAwesome from 'react-fontawesome';
import "../style.css";

class Header extends Component {
  renderTabItem = (link, text) => {
    let className = "nav-item is-tab";
    const currentPath = window.location.pathname;
    if(currentPath === link) {
      className += " is-active";
    }
    return (
      <a className={className} href={link}>{text}</a>
    );
  }

  render() {
    const path = window.location.pathname;
    return (
      <div>
        <section className="hero">
          <div className="hero-body">
            <div className="container app-header content">
              <h1 className="title">Doe Aqui</h1>
              <h2 className="subtitle">
                <FontAwesome name='heart-o' />
              </h2>
            </div>
          </div>
        </section>
        <nav className="nav">
        <div className="nav-center">
          {this.renderTabItem("/", "Onde doar")}
          {this.renderTabItem("/about", "Quem somos")}
        </div>
        </nav>
      </div>
    );
  }
}

export default Header;
