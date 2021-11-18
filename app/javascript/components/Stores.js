import React from "react";

const Stores = (props) => {
  const renderStores = () => {
    return props.stores.map((store) => {
      return (
        <div>
          <h1>Stores Page</h1>
          <p>name: {store.name}</p>
          <p>item: {store.item}</p>
        </div>
      );
    });
  };

  return (
    <div>
      <a href="/">Home</a>
      <a href="/stores/new">New Department Stores</a>
      <p>List of Department Stores</p>
      {renderSubs()}
    </div>
  );
};

export default Stores;