// create an array that contains all the images
const IMG =document.querySelectorAll("img");
// this is an object
const SIZE = {
    showcase: "100vw",
    reason: "(max-width: 799px) 100vw, 372px",
    feature: "(max-width: 799px) 100vw, 558px",
    story: "(max-width: 799px) 100vw, 670px",
};
function makeSrcset(imgSrc){
    let mrkup = [];
    let width = 400;

    for (let i = 0; i<5; i++){
        //images/expeirence/apartmentclass-400.jpg 400w
        mrkup[i] = imgSrc + "-" + width + ".jpg "+ width + "w";
        width+=400;
    }
    //join creates a comma seperated list.
    return mrkup.join();
}

// Create a loop for each image. on the page.
for (let i = 0; i<IMG.length; i++){
    let imgsrc = IMG[i].getAttribute("src");
    // head to end of array and slice off last 8 characters
    imgsrc = imgsrc.slice(0,-8);
    let srcset = makeSrcset(imgsrc);
    IMG[i].setAttribute("srcset",srcset);
    let typ = IMG[i].getAttribute("data-type");
    let sizes = SIZE[typ];
    IMG[i].setAttribute("sizes", sizes);
}
