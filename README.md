##Griffin's box of scrapers

Most of these have been used to generate data for OONI probes, custom filtering scripts, website safety determinations, fighting on SOPA, and random other projects.

### Alexa Topsites
***alexaBY.rb***
This was created to generate lists for OONI probes within Belarus. Based on a (non-working) script by zerothabhishek, I fixed some syntax, and changed the output to append a single csv file.

***alexaBY2.rb***
This is the same as above, but includes columns for site rank and description. This outputs twenty files, one for each page scraped. (eg, `alexa-0`)

If you really want/need these to be one file, put them in their own special directory and run `cat * > alexa.csv` from that directory.

***To use***
Make sure you have the necessary dependencies with this string:
`sudo apt-get install ruby ruby-dev -y |sudo gem install nokogiri`

This will install ruby, ruby's development packages, and the required nokogiri rubygem.

Then run this command: `ruby alexaBY.rb`

***To customize***
To customize the country, change all instances of "BY" with the country code you want. Don't know which to pick? Check out [http://www.alexa.com/topsites/countries](the Alexa site for some ideas).

**Problem?**
If you simply copied a link from Alexa into this script, you likely missed a variable. Format should be: `http://www.alexa.com/topsites/countries;#{i}/BY` The `;#{i}` is important because it tells the script to check every page from one to twenty (1..20 being defined elsewhere in the script).

###More problem?
Email griffin [@] cryptolab.net
