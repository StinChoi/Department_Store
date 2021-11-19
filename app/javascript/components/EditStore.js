import React from "react"

const EditStore = (props) => {
  return (
    <div>
      <h2>Edit Store</h2>
      <h3>Enter New Information below</h3>
      <form actions={`/stores/${props.store.id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>Store Name</p>
        <input name="store[name]" defaultValue={props.store.name} />
        <button type="submit">Change</button>
      </form>
      <a href={`/stores/${props.store.id}`}>Back to Store</a>
      <br></br>
      <a href="/stores">Home</a>
    </div>
  );
};

export default EditStore;