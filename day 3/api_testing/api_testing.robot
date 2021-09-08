*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Test Cases ***

#000. Dog test connection
#    # Setup
#    Create session  dog  https://dog.ceo/api  verify=${TRUE}
#
#   # Make request
#   ${response} =  Get on session  dog  /breeds/image/random
#
#   # Get to the data
#   ${response_content} =  set variable  ${response.json()}
#   Log to console  ${response_content}
#
#   # Close session
#   Delete all sessions
#
#001. Dog random bouvier image
#    # Setup
#    Create session  dog  https://dog.ceo/api  verify=${TRUE}
#
#
#002. Get three images of your favourite dog breed
#    # Setup
#    Create session  dog  https://dog.ceo/api  verify=${TRUE}
#

# SECOND PART
000. OMDB Movie Test connection
    # Setup
   Create session  omdb  http://www.omdbapi.com

   # Make request
   ${response} =  Get on session  omdb  /

   # Assert
   Should be equal as strings  ${response.status_code}  200

# this is a comment
001. OMDB Movie Get request with i argument
    [Documentation]  i stands for imdb id
    # Setup
    ${data} =  Create dictionary  apikey=2aa69e5c  i=tt1285016
    ${response} =  Get on session  omdb  /  params=${data}

    # Assert
    Should be equal as strings  ${response.status_code}  200
    ${response_content} =  set variable  ${response.json()}
    Dictionary should contain key  ${response_content}  Title
    Should be equal as strings  ${response_content['Title']}  The Social Network

# 002. OMDB Movie Get request with a title
# 003. OMDB Movie Get request Batman the movie
# 004.  OMDB Movie Get request Batman the series

