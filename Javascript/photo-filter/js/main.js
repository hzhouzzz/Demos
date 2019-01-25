// Enter your JavaScript for the solution here...

window.addEventListener("load", function(){
    const searchInput = document.querySelector(".frm-control")
    const imageArray = Array.from(document.querySelectorAll(".thumb-display"));
    const searchFrom = document.querySelector(".frm-filter")
    const resetBtn = document.querySelector(".reset")
    console.log(imageArray);

    // for loop
    var imageArrayTag = [];
    for (i = 0; i < imageArray.length; i++){
 
        var imageArrayTagText = imageArray[i].querySelector("p").innerHTML;
        imageArrayTag.push(imageArrayTagText)
        console.log(imageArrayTagText)        
    }

    console.log(imageArrayTag)
    searchInput.addEventListener('input', function(){

        const filteredImageTag = imageArrayTag.filter(imageTag => {
            return imageTag.includes(searchInput.value)
        })

        for (i = 0; i < imageArray.length; i++){
            if (!(filteredImageTag.includes(imageArray[i].querySelector("p").innerHTML))){
                imageArray[i].classList.add('hidden');   
            }else{
                resetBtn.style.visibility = "visible";
                imageArray[i].classList.remove('hidden'); 
                if (searchInput.value == ""){
                    resetBtn.style.visibility = "hidden";
                }         
            }
        }

        resetBtn.addEventListener('click', function(){
            for (i = 0; i < imageArray.length; i++){
                imageArray[i].classList.remove('hidden');
            }
            resetBtn.style.visibility = "hidden";
        })
         
        console.log(filteredImageTag.toString())
       
    })
    
})