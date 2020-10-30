# Treatably
Medical app developed with Swift using Xcode.
Visit this issue link to take a look at some screenshots of Treatably from Xcode. 
https://github.com/djangoprince/Treatably/issues/1#issue-716975365

During these 4 days in the nordic hackathon, our focus was on bringing a security aspect to our app. Our focus on the data security that´s why we have put 3 ways to verify the data. First, a mobile phone verification using a code, then an email verification and then a registration key which is called "rafræn skilríki". In Iceland, this key is important to log into the goverments services and it is a very strong user verification. 
To be able to apply these data security methods, I integrated Firebase into Swift and then I added cocopods to my project. After that, I purchased an Apple developer account to be able to get the authentication key which will allow me to send push notifications to the user on his phone or email. 

After looking into data security issues, I switched my attention to finding ways to save data. For that I have used the UserDefault interface which stores key-value pairs persistently across launches of your app. UserDefault helped me store, transit and reuse the data in different ViewControllers and classes without any difficulties. 




Enjoy!

