import React from "react";

const Stores = (props) => {
  const renderStores = () => {
    return props.stores.map((store) => {
      return (
        <div>
          <p>id: {store.id}</p>
          <p>name: {store.name}</p>
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