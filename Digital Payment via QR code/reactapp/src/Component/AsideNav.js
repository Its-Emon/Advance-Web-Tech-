
import React, { useState } from 'react';
import Button from 'react-bootstrap/Button';
import Offcanvas from 'react-bootstrap/Offcanvas';
import Style from "./Style/AsideNav.module.css";
import { Link } from 'react-router-dom';
import menue from "./Image/menue.png";


function AsideNav() {
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  return (
    <>
      <button variant="primary" onClick={handleShow}>
     <img className={Style.menue} src={menue} />
      </button>

      <Offcanvas show={show} onHide={handleClose} backdrop="static">
        <Offcanvas.Header closeButton>
          <Offcanvas.Title className={Style.title}>E-TICKETING</Offcanvas.Title>
        </Offcanvas.Header>
        <Offcanvas.Body>
        <ul>
            <li className={Style.li}><Link className={Style.a} to="/profile">PROFILE</Link></li>
             <li className={Style.li}><Link className={Style.a} to="/user">USERS</Link></li>
              <li className={Style.li}><Link className={Style.a} to="/add_deliveryman">ADD CONTRACTOR</Link></li>
              <li className={Style.li}><Link className={Style.a} to="/delivery_request">CONTRACTOR REQUEST</Link></li>
              <li className={Style.li}><Link className={Style.a} to="/home">LOGOUT</Link></li>
            
          </ul>
        </Offcanvas.Body>
      </Offcanvas>
    </>
  );
}

export default AsideNav;