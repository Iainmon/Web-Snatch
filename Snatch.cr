#Colors
HEADER = "\033[95m"
OKBLUE = "\033[94m"
OKGREEN = "\033[92m"
WARNING = "\033[93m"
FAIL = "\033[91m"
ENDC = "\033[0m"
BOLD = "\033[1m"
UNDERLINE = "\033[4m"

#Dialogs
puts "#{OKGREEN}Hello! Enter a domain to snatch from!#{ENDC}"
domain = gets
puts "#{OKGREEN}Please enter a directory to snatch from #{OKBLUE + BOLD}#{domain}#{ENDC} #{OKGREEN}?#{ENDC} #{WARNING}(Default is '/')#{ENDC}"
path = gets
path = "/" if path
# if path[0] == '/'
#     domainPath = "#{domain}#{path}"
# else
#     domainPath = "#{domain}/#{path}"
# end
domainPath = "#{domain}/#{path}"
puts "#{OKGREEN}Where would you like to put the files from #{OKBLUE + BOLD}#{domain}#{ENDC}#{WARNING}#{path}#{ENDC} #{OKGREEN}?#{ENDC}"