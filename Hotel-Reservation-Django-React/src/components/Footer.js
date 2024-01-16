import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import picture1 from "../assets/freepik1.jpg"
import picture2 from "../assets/freepik2.jpg"
import picture3 from "../assets/freepik3.jpg"

import {
  faMapMarkerAlt,
  faPhoneAlt,
  faEnvelope,
} from "@fortawesome/free-solid-svg-icons";
import {
  faTwitter,
  faFacebookF,
  faYoutube,
  faLinkedinIn,
} from "@fortawesome/free-brands-svg-icons";

const Footer = () => {
  return (
    <div
      className="container-fluid  text-light footer pt-5 mt-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div className="container py-5">
        <div className="row g-5">
          <div className="col-lg-3 col-md-6">
            <h4 className="text-white mb-3">Company</h4>
            <a className="btn btn-link" href="#">
              About Us
            </a>
            <a className="btn btn-link" href="#">
              Contact Us
            </a>
            <a className="btn btn-link" href="#">
              Privacy Policy
            </a>
            <a className="btn btn-link" href="#">
              Terms & Condition
            </a>
            <a className="btn btn-link" href="#">
              FAQs & Help
            </a>
          </div>
          <div className="col-lg-3 col-md-6">
            <h4 className="text-white mb-3">Contact</h4>
            <p className="mb-2">
              <FontAwesomeIcon icon={faMapMarkerAlt} className="me-3" />
              123 Street, New York, USA
            </p>
            <p className="mb-2">
              <FontAwesomeIcon icon={faPhoneAlt} className="me-3" />
              +012 345 67890
            </p>
            <p className="mb-2">
              <FontAwesomeIcon icon={faEnvelope} className="me-3" />
              info@example.com
            </p>
            <div className="d-flex pt-2">
              <a className="btn btn-outline-light btn-social" href="">
                <FontAwesomeIcon icon={faTwitter} />
              </a>
              <a className="btn btn-outline-light btn-social" href="">
                <FontAwesomeIcon icon={faFacebookF} />
              </a>
              <a className="btn btn-outline-light btn-social" href="">
                <FontAwesomeIcon icon={faYoutube} />
              </a>
              <a className="btn btn-outline-light btn-social" href="">
                <FontAwesomeIcon icon={faLinkedinIn} />
              </a>
            </div>
          </div>
          <div className="col-lg-3 col-md-6">
            <h4 className="text-white mb-3">Gallery</h4>
            <div className="row g-2 pt-2">
                <div  className="col-4">
                  <img className="img-fluid bg-light p-1"
                    src={picture1}/>
                </div>
                <div  className="col-4">
                  <img className="img-fluid bg-light p-1"
                    src={picture1}/>
                </div>
                <div  className="col-4">
                  <img className="img-fluid bg-light p-1"
                    src={picture1}/>
                </div>
            </div>
            <div className="row g-2 pt-2">
                <div  className="col-4">
                  <img className="img-fluid bg-light p-1"
                    src={picture1}/>
                </div>
                <div  className="col-4">
                  <img className="img-fluid bg-light p-1"
                    src={picture1}/>
                </div>
                <div  className="col-4">
                  <img className="img-fluid bg-light p-1"
                    src={picture1}/>
                </div>
            </div>
            <div className="row g-2 pt-2">
                <div  className="col-4">
                  <img className="img-fluid bg-light p-1"
                    src={picture1}/>
                </div>
                <div  className="col-4">
                  <img className="img-fluid bg-light p-1"
                    src={picture1}/>
                </div>
                <div  className="col-4">
                  <img className="img-fluid bg-light p-1"
                    src={picture1}/>
                </div>
            </div>
          </div>
          <div className="col-lg-3 col-md-6">
            <h4 className="text-white mb-3">Newsletter</h4>
            <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
            <div
              className="position-relative mx-auto"
              style={{ maxWidth: "400px" }}
            >
              <input
                className="form-control border-primary w-100 py-3 ps-4 pe-5"
                type="text"
                placeholder="Your email"
              />
              <button
                type="button"
                className="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2"
              >
                SignUp
              </button>
            </div>
          </div>
        </div>
      </div>
      <div className="container">
        <div className="copyright">
          <div className="row">
            <div className="col-md-6 text-center text-md-start mb-3 mb-md-0">
              &copy;{" "}
              <a className="border-bottom" href="#">
                Your Site Name
              </a>
              , All Right Reserved.
              {/* This template is free as long as you keep the footer author’s credit link/attribution link/backlink.
              If you'd like to use the template without the footer author’s credit link/attribution link/backlink,
              you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal".
              Thank you for your support. */}
              Designed By{" "}
              <a className="border-bottom" href="https://htmlcodex.com">
                HTML Codex
              </a>
            </div>
            <div className="col-md-6 text-center text-md-end">
              <div className="footer-menu">
                <a href="#">Home</a>
                <a href="#">Cookies</a>
                <a href="#">Help</a>
                <a href="#">FAQs</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Footer;
