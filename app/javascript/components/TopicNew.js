// Topic is an alias for Item**
import React from "react";

const TopicNew = (props) => {
  return (
    <div>
      <h2>New Items</h2>
      <a href={`/stores/${props.store.id}/topics`}>Back to Store</a>
      <h3>Enter new Item information</h3>
      <form action={`/stores/${props.store.id}/topics`} method="post">
        <p>Item name:</p>
        <input name="topic[name]" placeholder="Enter name" />
        <button type="Submit">Add</button>
      </form>
    </div>
  );
};