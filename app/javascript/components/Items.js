import React from "react";

const Items = (props) => {
  const renderItems = () => {
    return props.items.map((item) => {
      return (
        <div>
          <h4>{item.name}</h4>
          <a href={`/stores/${props.store.id}/items/${item.id}`}>View Items</a>
          <br></br>
          <a href={`/stores/${props.store.id}/items/${idem.id}/edit`}>Edit Items</a>
          <br></br>
          <a href={`/stores/${props.store.id}/items/${item.id}`} data-method="delete">Delete Item</a>
        </div>
      );
    });
  };
  return (
    <div>
      <h1>Welcome to the {props.store.name} ! </h1>
      <a href="/stores">Back to Stores</a>
      <br></br>
      <a href={`/stores/${props.stores.id}/items/new`}>Create a new item</a>
      <p>{renderItems()}</p>
    </div>
  );
};

export default Items;
