#Colors
HEADER = "\033[95m"
OKBLUE = "\033[94m"
OKGREEN = "\033[92m"
WARNING = "\033[93m"
FAIL = "\033[91m"
ENDC = "\033[0m"
BOLD = "\033[1m"
UNDERLINE = "\033[4m"

#Functions
def run_cmd(cmd)
    stdout = IO::Memory.new
    stderr = IO::Memory.new
    status = Process.run(cmd, args: "", output: stdout, error: stderr)
    if status.success?
      {status.exit_code, stdout.to_s}
    else
      {status.exit_code, stderr.to_s}
    end
  end

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
puts "#{OKGREEN}Where would you like to put the files from #{OKBLUE + BOLD}#{domain}#{ENDC}#{WARNING}#{path}#{ENDC} #{OKGREEN}?#{ENDC} #{WARNING}(Default is '/')#{ENDC}"

userPath = gets
userPath = "" if userPath

cmd = "cd #{userPath}; wget --recursive --page-requisites --adjust-extension --span-hosts --convert-links --restrict-file-names=windows --domains #{domain} --no-parent #{domainPath} "
status, output = run_cmd(cmd)
puts "#{FAIL + BOLD}WOOPS!?! Something sent wrong!#{ENDC} Make sure you have wget installed, connected to the internet, the folder exists, and the domain is correct." unless status == 0
