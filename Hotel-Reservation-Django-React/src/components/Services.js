import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faGlobe,
  faHotel,
  faUser,
  faCog,
} from "@fortawesome/free-solid-svg-icons";

const ServicesComponent = () => {
  const services = [
    {
      icon: faGlobe,
      title: "WorldWide Tours",
      description:
        "Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam",
    },
    {
      icon: faHotel,
      title: "Hotel Reservation",
      description:
        "Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam",
    },
    {
      icon: faUser,
      title: "Travel Guides",
      description:
        "Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam",
    },
    {
      icon: faCog,
      title: "Event Management",
      description:
        "Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam",
    },
  ];

  return (
    <div className="container-xxl py-5">
      <div className="container">
        <div className="text-center wow fadeInUp" data-wow-delay="0.1s">
          <h1 className="mb-5">Our Services</h1>
        </div>
        <div className="row g-4">
          {services.map((service, index) => (
            <div
              key={index}
              className={`col-lg-3 col-sm-6 wow fadeInUp`}
              data-wow-delay={`${0.1 + index * 0.2}s`}
            >
              <div className="service-item rounded pt-3">
                <div className="p-4">
                  <FontAwesomeIcon
                    icon={service.icon}
                    className="fa-3x  mb-4"
                  />
                  <h5 className="title">{service.title}</h5>
                  <p>{service.description}</p>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};

export default ServicesComponent;
