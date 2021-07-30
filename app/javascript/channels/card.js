const listHover = document.querySelector(".card");

  listHover.addEventListener("click", (event) => {
  console.log(event.currentTarget)
  y = document.querySelector("img_card");
  y.ClassList.add("red");
  });


export { listHover };
