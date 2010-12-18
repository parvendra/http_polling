# Ruby on Rails Exercise: HTTP polling
Project: Simulating Polling using traditional HTTP

Requirements:

1.Design a page [hereafter, referred to as Screen 1] that has the following fields:
Page will have a submit button clicking on which would initiate the search process for the tickets.

2.When the user clicks the submit button, the user must be shown a page [hereafter, referred to as Screen 2] which will have show a message that says 'Searching. Please wait...'.

3.Once Screen 2 is shown, a back end "search" process must be initiated. This back end process must be forced to run for at least 10 seconds. This can just be a mock process that does nothing but create an artificial delay to simulate an actual search as seen on public websites.

4.After the back end returns the search results, Screen 2 must automatically be replaced by a new page [hereafter, referred to as Screen 3] that will show all the search results. Again the search results can be just hard coded text.


The objective of the above exercise is be able to simulate a web based system that has a long running back end process, while at the same time providing feedback to the end user when the back end process is running. And all of this needs to be done within the constraints of traditional HTTP.

