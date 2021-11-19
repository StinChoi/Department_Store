import React from "react";

const Items = (props) => {
  const renderTopics = () => {
    return props.topics.map((item) => {
      return (
        <div>
          <h4>{topic.name}</h4>
          <a href={`/stores/${props.store.id}/topics/${topics.id}`}>View Items</a>
          <br></br>
          <a href={`/stores/${props.store.id}/topics/${topics.id}/edit`}>Edit Items</a>
          <br></br>
          <a href={`/stores/${props.store.id}/topics/${topics.id}`} data-method="delete">Delete Item</a>
        </div>
      );
    });
  };
  return (
    <div>
      <h1>Welcome to the {props.store.name} ! </h1>
      <a href="/stores">Back to Stores</a>
      <br></br>
      <a href={`/stores/${props.stores.id}/topics/new`}>Create a new item</a>
      <p>{renderTopics()}</p>
    </div>
  );
};

export default Topics;
