import React from "react";

const Store = (props) => {
  const renderTopics = () => {
    return props.topics.map((topic) => {
      return (
        <div>
          <h3>{topic.name}</h3>
        </div>
      );
    });
  };
  return (
    <div>
      <p>Listing a Single Store</p>
      <h1>{props.store.name}</h1>
      <a href={`/stores/${props.store.id}/edit`}>Edit this Department Store</a>
      <br></br>
      <a href={`/stores/${props.store.id}`} data method="delete">Delete Department</a>
      <br></br>
      <a href="/stores">Back</a>
      <br></br>
      <h3>Item List</h3>
      <p>{renderTopics()}</p>
    </div>
  );
};

export default Store;



// return (
//     <div>
//       <p>Listing a Single Store</p>
//       <h1>{props.store.name}</h1>
//       <p>items: {props.store.topic}</p>

//       <a href="/stores">Stores List</a>
//       {/* <p>{renderTopic()}</p> */}
//     </div>
//   );
// };

// export default Store;