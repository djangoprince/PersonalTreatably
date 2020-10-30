# Treatably
Treatably is a mobile medical app developed with Swift using Xcode.
Visit this issue link to take a look at some screenshots of Treatably from Xcode. 
https://github.com/djangoprince/Treatably/issues/1#issue-716975365

During these 4 days in the nordic hackathon, our focus was on bringing a security aspect to our app. We thought first about the data security and that´s why we have put 3 approaches to verify the data inserted by the user while creating his private account. First, a mobile phone verification using a code, then an email verification and then a registration key which is called "rafræn skilríki". In Iceland, this key is important to log into the goverment´s services and it is a very strong user verification. 
To be able to apply these data security methods, I integrated Firebase into Swift and then I added Cocopods to my project. After that, I purchased an Apple developer account to be able to get the authentication key which will allow me to send push notifications to the user on his phone or email. 

After looking into data security issues, I switched my attention to finding ways to save data. For that I have used the UserDefault interface which stores key-value pairs persistently across launches of your app. UserDefault helped me store, transit and re-use the data in different ViewControllers and classes without any difficulties. 

After that, I took the stored data and displayed it to the user in a useful way like in the interface: BasicInformationViewController where the user can go and check the data that he inserted when he created an account then he can edit it if needed and save again. 

On the other hand, I had looked into the APIs shared in the hackathon website, I found some ones that allign with our needs. Our next step is to use them to show data related to blood tests and other lab results. 


Enjoy reading my code!

