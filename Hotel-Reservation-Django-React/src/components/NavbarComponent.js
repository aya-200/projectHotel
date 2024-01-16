import React, { useContext } from "react";
import { Link } from "react-router-dom";
import { MyContext } from "../Context";
import logo from '../assets/HOTELL.png'; 
export default function NavbarComponent() {
  const context = useContext(MyContext);

  return (
    <>
      <nav  className="navbar navbar-expand-lg navbar-light bg-light">
        <button
          className="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span className="navbar-toggler-icon"></span>
        </button>
        
        <a class="navbar-brand" href="#">
      <img src={logo} alt="Logo" width="80" height="80" class="d-inline-block align-text-top"/>
      
    </a>
        <div className="collapse navbar-collapse" id="navbarNav">
          <ul className="navbar-nav m-auto">
            <Link to="/" className="nav-link">
              <li className="nav-item">Home</li>
            </Link>
            <Link to="/rooms" className="nav-link">
              <li className="nav-item">Rooms</li>
            </Link>
            {context.isAdmin && context.isUserAuthenticated ? (
              <Link to="/dashboard" className="nav-link">
                <li className="nav-item">Dashboard</li>
              </Link>
            ) : (
              ""
            )}
            {context.isUserAuthenticated ? (
              <Link
                to="/"
                className="nav-link"
                role="button"
                onClick={context.logout}
              >
                <button className="LogButton3">Logout</button>
              </Link>
            ) : (
              <>
                <Link to="/login" className="nav-link">
                  <button className="LogButton1">Login</button>
                </Link>
                <Link to="/register" className="nav-link">
                  <button className="LogButton2">Register</button>
                </Link>
              </>
            )}
          </ul>
        </div>
      </nav>

      <div className="container">
        <div className="row justify-content-center pt-3">
          <p
            className="success-message font-weight-bold"
            id="common-message"
          ></p>
        </div>
      </div>
    </>
  );
}
