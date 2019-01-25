// Enter your JavaScript for the solution here...

window.addEventListener("load", function(){
    //declearation
    var galleryArray = [];
    var whichObj;
    var error = document.querySelector('p.error');

    //push the dataset into array
    galleryArray.push(galleryObj1);
    galleryArray.push(galleryObj2);
    galleryArray.push(galleryObj3);

    //add click event listner to different imgs
    document.querySelector("img[alt=Athens]").addEventListener("click", onUpdateDisplay);
    document.querySelector("img[alt=Barcelona]").addEventListener("click", onUpdateDisplay);
    document.querySelector("img[alt=Lisbon]").addEventListener("click", onUpdateDisplay);

    //change images in dataset
    function onUpdateDisplay(e){
        whichObj = e.currentTarget.dataset.index;
        console.log(whichObj);
        error.innerHTML=" ";

        switch(whichObj){
            case "0":
                setGalleryImage(galleryArray[whichObj])
                document.querySelector(".tags").innerHTML = galleryObj1.tag;           
            break;
            case "1":
                setGalleryImage(galleryArray[whichObj])
                document.querySelector(".tags").innerHTML = galleryObj2.tag; 
            break;
            case "2":
                setGalleryImage(galleryArray[whichObj]) 
                document.querySelector(".tags").innerHTML = galleryObj3.tag; 
            break;
        }

        function setGalleryImage(dataObj){
            document.querySelector(".editor img").src = dataObj.src;
            document.querySelector(".title").innerHTML = dataObj.title;        
        }     
    }

    //form submit action
    var form = document.querySelector('form'); 

    form.addEventListener("submit", function submitHandler(e){
        var tagValue = document.querySelector("#tag").value;

        //validation
        if(tagValue == ""){
            error.innerHTML = "Tags can't be empty";
            error.classList.add("animated", "fadeIn")
            error.classList.remove('hidden');
        }else if(tagValue.trim().indexOf(' ') >= 0){
            error.innerHTML='Tags cannot contains space';
            error.classList.add("animated", "fadeIn")
            error.classList.remove('hidden');
        }else{
            //store tags in different objects
            // if(whichObj === "0"){
            //     galleryObj1.tag.push("#" + tagValue);
            //     document.querySelector(".tags").innerHTML = galleryObj1.tag;
            // }else if(whichObj === "1"){
            //     galleryObj2.tag.push("#" + tagValue);
            //     document.querySelector(".tags").innerHTML = galleryObj2.tag;
            // }else if(whichObj === "2"){
            //     galleryObj3.tag.push("#" + tagValue);
            //     document.querySelector(".tags").innerHTML = galleryObj3.tag;
            // }else{
            //     galleryObj1.tag.push("#" + tagValue);
            //     document.querySelector(".tags").innerHTML = galleryObj1.tag;
            // }
            switch(whichObj){
                case "0":
                    setImagetags(galleryArray[whichObj]);
                break;
                case "1":
                    setImagetags(galleryArray[whichObj]);
                break;
                case "2":
                    setImagetags(galleryArray[whichObj]);
                break;
                default:
                    galleryObj1.tag.push("#" + tagValue);
                    document.querySelector(".tags").innerHTML = galleryObj1.tag;
            }

            function setImagetags(dataObj){
                dataObj.tag.push("#" + tagValue);
                document.querySelector(".tags").innerHTML = dataObj.tag;
            }

            error.classList.remove("animated", "fadeIn")
            error.classList.add("animated", "fadeOut")
            error.classList.add('hidden');
            tagValue = "";
        }
        
        console.log(galleryObj1.tag)
        console.log(galleryObj2.tag)
        console.log(galleryObj3.tag)
        
        e.preventDefault();
    }); 

})