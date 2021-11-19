// Topic is an alias for Item**
import React from "react";

const EditTopic = (props) => {
  return (
    <div>
      <h2>Edit Item</h2>
      <h3>Enter new Item information</h3>
      <form action={`/stores/${props.store.id}/topics/${props.topic.id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>Item Name</p>
        <input name="topic[name]" defaultValue={props.topic.name} />
      </form>
      <a href={`/stores/${props.store.id}/topics/${props.topic.id}`}>Back to Items</a>
      <br></br>
      <a href={`/stores/${props.store.id}/topics`}>Back to Stores</a>
      <br></br>
      <a href="/stores">Home</a>
    </div>
  );
};

export default EditTopic;