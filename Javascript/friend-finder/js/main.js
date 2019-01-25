//Scenario 1 - Fetching friends list data
var friends;

//Step 1
var xhr = new XMLHttpRequest();

//Step 2
xhr.addEventListener('load',function(evt){
	if(xhr.status == 200) {
		friends = JSON.parse(xhr.responseText);
		renderFriendsView(friends);
	} else {
		//TODO: display an error in the DOM
		console.error('Failed to load data: ' + xhr.status)
	}

})

//Add event listener on friend tag
document.querySelector('.friends').addEventListener('click', function(evt){
	//Step 3
	xhr.open('GET','friends/friends.json', true);
	//Step 4
	xhr.send();
	evt.preventDefault();

	evt.target.classList.add('pure-menu-selected');
});

function renderFriendsView(friends){
	//Declare variable
	var div,
		span,
		ul;

	//Select the content tag
	var content = document.querySelector('.content');
	content.innerHTML = '';

	//Create the content
	div = document.createElement('div');
	span = document.createElement('span');
	ul = document.createElement('ul')

	//Set appropriate attributes
	div.setAttribute('class', 'pure-menu custom-restricted-width');
	span.setAttribute('class', 'pure-menu-heading');
	ul.setAttribute('class', 'pure-menu-list');

	//Build document fragment
	span.innerHTML = 'Friends';

	//Append child	
	div.appendChild(span);

	//Create list content
	friends.forEach(function (friend){
		//Create the list
		var li = document.createElement('li');
		var a = document.createElement('a');

		//Set appropriate attributes
		li.setAttribute('class', 'pure-menu-item');
		a.setAttribute('class', 'pure-menu-link');	
		a.setAttribute('href', '#');	
		a.setAttribute('data-id', friend.id);

		//Set inner text
		a.innerHTML = friend.firstName + ' ' + friend.lastName

		//Append child
		li.appendChild(a);
		ul.appendChild(li);
	});

	//Add the rest
	div.appendChild(ul);
	content.appendChild(div);
};

//Scenario 2 - Fetching Individual friend data

var individual;

//Step 1
var xhr1 = new XMLHttpRequest();

//Step 2
xhr1.addEventListener('load',function(evt){
	if(xhr1.status == 200) {
		individual = JSON.parse(xhr1.responseText);
		renderIndividualView(individual);
	} else {
		//TODO: display an error in the DOM
		console.error('Failed to load data: ' + xhr1.status)
	}

});

document.querySelector('.content').addEventListener('click', function(evt) {
	if (evt.target.classList.contains('pure-menu-link')){
		var id = evt.target.getAttribute('data-id');
		//Step 3
		xhr1.open('GET','friends/'+ id +'.json', true);
		//Step 4
		xhr1.send();
		evt.preventDefault();
	}
});

function renderIndividualView(individual){

	//Declare variable
	var div1,
		div2,
		img,
		h2,
		ul,
		li1,
		li2,
		span1,
		span2,
		p;

	//Clear the content
	var content = document.querySelector('.content');
	content.innerHTML = '';

	//Create content
	div1 = document.createElement('div');
	div2 = document.createElement('div');
	img = document.createElement('img');
	h2 = document.createElement('h2');
	ul = document.createElement('ul');
	li1 = document.createElement('li');
	li2 = document.createElement('li');
	span1 = document.createElement('span');
	span2 = document.createElement('span');
	p = document.createElement('p');

	//Set appropriate attributes
	div1.setAttribute('class', 'friend');
	div2.setAttribute('class', 'identity');
	img.setAttribute('class', 'photo');
	img.setAttribute('src', 'img/' + individual.avatar);
	h2.setAttribute('class', 'name');
	span1.setAttribute('class', 'label');
	span2.setAttribute('class', 'label');
	p.setAttribute('class', 'bio');

	//Set inner text
	h2.innerHTML = individual.firstName + ' ' + individual.lastName;
	span1.innerHTML = 'email:';
	span2.innerHTML = 'hometown:';
	p.innerHTML = individual.bio;

	//Add Childnote
	li1.appendChild(span1);
	li1.innerHTML += ' ' + individual.email;

	li2.appendChild(span2);
	li2.innerHTML += ' ' + individual.hometown;
	ul.appendChild(li1);
	ul.appendChild(li2);
	div2.appendChild(img);
	div2.appendChild(h2);
	div2.appendChild(ul);
	div1.appendChild(div2);
	div1.appendChild(p);

	//Add to content
	content.appendChild(div1);

}

window.addEventListener('load', function(){
	let x = 9;
	let y = 1;
	while (y<=x){
		y= y * 3
		console.log(y);
	}
})