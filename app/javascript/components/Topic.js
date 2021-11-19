import React from "react";

const Topic = (props) => {
  return (
    <div>
      <h1>Item Info</h1>
      <h2>{props.topic.name}</h2>
      <br></br>
      <a href={`/stores/${props.store.id}/topics/$(props.topic.id)/edit`}>Edit Item</a>
      <br></br>
      <a href={`/stores/${props.store.id}/topics/${props.topic.id}`} data-method="delete">Delete Item</a>
      <br></br>
      <a href={`/stores/${props.store.id}/topics`}>Back</a>
    </div>
  );
};

export default Topic;