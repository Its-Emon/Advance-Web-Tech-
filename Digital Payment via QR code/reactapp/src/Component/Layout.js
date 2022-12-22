import Nav from "./Nav";
import axios from "axios";
import { useEffect } from "react";
import { Table } from "react-bootstrap";
import "react-circular-progressbar/dist/styles.css";
import ACard from "./Card";
import Style from "./Style/Layout.module.css";
import { useState } from "react";
import Chart from "./Chart";
import TodaysDeliverymanRequest from "./TodayDeliverymanRequest";
import { Link, useNavigate } from "react-router-dom";
export default function Layout() {
  const [data, setData] = useState([]);
  const navigate = useNavigate('');
  useEffect(() => {
    if (localStorage.getItem('user')) {
      //if (localStorage.getItem('user')){
      axios
        .get(`http://127.0.0.1:8000/api/data`)
        .then((resp) => {
          console.log(resp.data);
          setData(resp.data);
        })
        .catch((err) => {
          console.log(err);
        });
    }
    else {
      alert("You are not logged in. Login or registration first");
      navigate('/login');
    }
  }, []);



  return (
    <>
      <Nav />
      <div className={Style.main}>
        <ACard title="TICKET" data={data.product} total={data.total_product} />
        <ACard title="CONTRACTOR" data={data.buyer} total={data.total_buyer} />
        <ACard title="CUSTOMER" data={data.seller} total={data.total_seller} />

      </div>
      <div className={Style.content}>
        <div className={Style.table}>
          <h4>TODAY'S CONTRACTOR REQUEST</h4>
          <br />
          <TodaysDeliverymanRequest />
        </div>
      </div>
    </>
  );
}
