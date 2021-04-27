document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // Input
  // Submit
  // Clear
  // New item appended to ul#rest
  // const rest = document.getElementById("restaurants");
  const rest = document.getElementById("sf-rest");
  rest.addEventListener("submit", event => {
    event.preventDefault();
    const restInput = document.getElementById("fav-input");
    // const restInput = document.getElementsByClassName("favorite-input");
    const restName = restInput.value;
    restInput.value = "";

    const ul = document.getElementById("restaurants");
    const li = document.createElement("li");
    li.textContent = restName;
    ul.appendChild(li);
  });



  // adding new photos

  // click toggle new photo to SHOW/HIDE
  // append ul>li>img
  const photos = document.getElementsByClassName("photo-form-container");
  photos.addEventListener("submit", event => {
    event.preventDefault();
    const imgInput = document.getElementsByClassName("photo-url-input");
    const imgUrl = imgInput.placeholder;
    
  });


});
