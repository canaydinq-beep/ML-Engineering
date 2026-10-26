
# Given an integer number of seconds, return a string representing the same duration in the format "H:MM:SS", where "H" is the number of hours, 
# "MM" is the number of minutes, and "SS" is the number of seconds. Return the time using the following rules:

# Seconds: Should always be two digits.
# Minutes: Should omit leading zeros when they aren't needed. Use "0" if the duration is less than 1 minute.
# Hours: Should be included only if they're greater than zero.

def format(seconds):

    hours = 0
    minutes = 0
    
    if seconds >= 3600:
        hours = seconds // 3600
        seconds = seconds - (hours*3600)
    
    if seconds >= 60:
        minutes = seconds // 60
        seconds = seconds - (minutes * 60)

    if hours == 0:
        return(f'{round(minutes)}:{round(seconds):02d}')
    else:
        return(f'{round(hours)}:{round(minutes):02d}:{round(seconds):02d}')
