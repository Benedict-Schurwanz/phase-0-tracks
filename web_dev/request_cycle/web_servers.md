# 9.1 - Release 1

2. What are some of the key design philosophies of the Linux operating system?
	* it's open source, allowing anyone to edit it, and (depending on the distribution) can be free
	# assumes the user knows what they're doing and is computer literate, rather than trying to protect the user from doing 'damage'


3. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS? 
	- it is a space in the memory of another computer somewhere that has memory and software and can perform the functions of a computer, with respect to http requests: being able to accept requests and respond to them, and store information and programs
Advantages: 
	* I don't have to pay for or house the hardware
	* It runs all the time without me
	* shared servers from hosting companies can be impacted by traffic on other sites hosted on the same shared server; a VPS gives you stability and reliability
	* more control, root access to the environment
	* efficient use of resources
	* scalability - can expand the capabilities of the server when more traffic is expected
	* cost effective

4. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system? 
	* programs are more vulnerable to changes, user accounts are protected from making changes to the operating system or other programs unless given special permission to make those changes