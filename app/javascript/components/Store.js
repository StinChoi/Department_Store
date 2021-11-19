import React from "react"

const Store = (props) => {

  return (
    <div>
      <p>Listing a Single Store</p>
      <h1>{props.store.name}</h1>
      <p>items: {props.store.item}</p>

      <a href="/">Home</a>
      <a href="/stores">Stores List</a>
    </div>
  );
};

export default Store;