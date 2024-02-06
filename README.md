# README

Hey there!! Welcome to my capstone project:)
I am going to be logging all my thoughts, findings, and most importantly my accomplishments!! Thanks for joining me on this journey.

## 2023-12-20

🧠 Today I decided on what my app was going to be about, and setteled on a consignment shop. I did this because I want to be invested in my app and enjoy spending time on it (and who doesnt love good deals, and making some 💰)

📝 My next step was wire framing, planning out the user stories, the models, and assosiations. It was pretty straight forward. Wire framing is definetly a favorite of mine (I actually gave a little crash course to my cohort on figma which was pretty neat).

👩‍🏫 Had a meeting with Amanda (My instructor) to go over all my planning, and make sure my MVP was actually an MVP;) She gave me the go ahead to start coding🥳

🛠️ Built the bare bones of my app. The models, controllers, jbuilders, and routes. I started making all the CRUD actions for the user but something got borked with the password. I guess that will be tomorrows activity!! 

## 2023-12-21

⛔️ I started off the day on a great foot!! played around with the routes and that fixed the password digest, then i finished CRUD for the index gave some assosiations, and im ready to start with user identification and sessions! wish me luck:)

🥳 Finished MVP for backend, got the sessions rolling and you need a jwt to add a product. I taking a leap and opening up frontend although I will probably need to come back (no pun intednded;) here an edit in the future. but for now.... wheeeee 🏁

😅 I got all the basic components in place and then connected to my backend. I made the item and user index and show. Then made them all link up to eachother. I got crazy stuck when my user show page would not show the user data!!! until I read through my code 1000 times and realized that I didn't pass in users as props🤦‍♀️ but all good now. Now that basic content is all good the next step i'm going to take is adding in the header with all its features.

👏 I'm super proud of myself today. I feel like I took great steps twards my goal. I am so much more comfortable with linking pages and axios requests after today. Being forced out on my own and challenging myself not to ask for help unless I tried my best really pushed me to accomplish and acheive so much on my own!! I'm super confidant with my app and I hope to see great strides in the coming days!! That's a wrap😊

## 2023-12-22

🤓 I cleaned up the header with conditionals to only show the appropriate links. I then stored current user id in local storage so i can access from any component!! (thanks kevin👏) I created the current user profile link, and set it up with the name. Now I got a little stuck trying to render the items from the user. I think i am going to try to render the items witht the correct user_id instead. I'll let you know how it goes!!

🥳 It worked! although I got stuck for a little while when trying to map through the items that have the correct user_id. Figured out that i need to filter and not find, then i was using three ===, and it only worked with two. I'm glad we passed that bump. Onto bigger and better!! next step is going to be editing a product so the owner can CRUD it.

🤨 I just spent way too long trying to make a modal, so I think I'm going to just go back to good old routing. Maybe ill give modal some more time, but for now i'm going to close when its not broken. Who likes broken code? Only had 2 hours today but still got a lot done!! Happy Holidays:)

## 2023-12-27

😬 Went on a little holiday so had a long break, which made continuing to build more of a challenge. I made the create action for items, as well as the edit and delete. The next step is going to be making sure each page has the correct headers which is going to entail adding some validations. After that I am going to ensure all the nessisary data is being displayed, then import some basic bootstrap. 

## 2023-12-29

😮‍💨 Okay due to lack of writing, I hava a lot to catch you up on. In the past two days I totaly revamped the styling on the website!! downloaded a bootstrap theme that made it look so pretty😍 I'm having a harder time styling to modal, but hopefully we will get that done. I added some nice images, made a user index page on the website and made lots of routing from page to page. I presented today so officially done but I am so excited to build this out!!

🧐 So heres what i'm thinking. First styling for the modal, add a contact form, make the consigners only people who have items and add multiple images to a product. This is all for enhancing the MVP and then i'll move on to messaging user, adding favorites, and then catagories!! then you can shop by catagories, and also ill add a search bar. Whooo!

## 2024-01-01

🥳 Happy new year!! This is my first time editing my project just for me. Not because im presenting or have to be doing something in class. I'm excited to see how far I can bring this. Today I am going to start to work on adding images to each product. I think I will start with the api- adding a modal, and then controller and updating all the jbuilders. 


## 2024-01-03

😅 So two days ago I set out to add images to my project. It was all going well, I set up a new model, controller, routes. Then I deleted the old images and displayed each items individual images in a bootstrap carosel. I was so proud of myself and all was going smoothly. Then I went to deploy my website and I saw on my notes that i should seed the data. So i followed the instructions and all my data got dumped - or so I thought. I was so distraught that I had just deleted all my hard work and where had I gone wrong. Now not only did I not have data but my website wouldnt deploy. I closed up shop and figured I would come back to the issue (which has proven to be very helpful).

😮‍💨 Today I came back and had a look at the seeds file. Turns out everything had been put into the seeds file! I still had all my data, and I still could not db:seed it. After trying to read the error for a few minutes I realized what was wrong. All the data was relying on each other  - I couldnt seed the items if they had to have a user and no user. So i commented out everything and only did the users. Then I commented out the images and created the items. When i went to create the images it also didnt work - but I realized it was because the id's of the items had changed so I had to update them all. 

🥰 Now I can go to bed with a clear consciounce. Tommorow I will be working on putting the theme in the create and edit modals and then attempting to deploy again. Good night😴

## 2024-01-23

👋 Hey there, its been a while. Starting to get back into the swing of things. My small project for today is fixing the create item action - because now the items are in their own modal. I am going to try to take images out. Then figure out how to add images with one axios request. Lets see if this can be done. If i have more time (highly unlikely) the edit profile button does not work so ill work on that and then tommorow ill add styling for these to elements

🤕 Wow it's hard work getting back into the grove. I just messed around with the create action and it wasnt working, only on httpie -> until i realized that i had to log in again!! my session had expired. I have to add a feature that if the session expires, it removes the jwt from local storage and forces you to log out. One day:) 

😀 I got the create action up and running. Its not so pretty but i have to deal. Now im going to try to add in image sending. Also how can i send more than one image? i guess well start with one, then make a button that says add another picture which renders another input form and then you can technicaly add how ever many you want. but first lets try with one.

## 2024-01-31
👩‍🏫 so i tried a bunch of times to add the create image function to the create item, and was pretty unsucsessful. Then I had my first tech mentor zoom, and after talking for a bit i asked her to help me with my capstone, and she did!! It is one of the most amazing feelings to finally get past a hurdle. So what she did was in the api, items controller, create action, just before the end we did an if statement - that if there is information in params for the url then create image with this item id and this url. I was able to make 5 diffrent image params which now limits the user to 5 photos but that is okay with me. 

👣 Forging ahead - I now am going to spend some time adding photos to the users closet (i took them out when messing around with the image creation, then i am going to hopefully get the user profile edit button to work, and if i have time today i'll style the create item. I'll see you soon:)

## 2024-02-04
🧹Goin to start off today by cleaning up the item create. Okay, that took a couple of hours, but i made it all nice and pretty and added validation that at least one image has to be added, and the errors show on the frontend!! So now the image 
