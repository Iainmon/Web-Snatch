# TODO: Write documentation for `Snatch`
require "CrystalColors"

module Snatch
  VERSION = "0.1.0"
  
  # Dialogs
  puts "#{CrystalColors::OKGREEN}Hello! Enter a domain to snatch from!#{CrystalColors::ENDC}"
  domain = gets
  puts "#{CrystalColors::OKGREEN}Please enter a directory to snatch from #{CrystalColors::OKBLUE + CrystalColors::BOLD}#{domain}#{CrystalColors::ENDC} #{CrystalColors::OKGREEN}?#{CrystalColors::ENDC} #{CrystalColors::WARNING}(Default is '/')#{CrystalColors::ENDC}"
  path = gets
  path = "/" if path
  # if path[0] == '/'
  #     domainPath = "#{domain}#{path}"
  # else
  #     domainPath = "#{domain}/#{path}"
  # end
  domainPath = "#{domain}/#{path}"
  puts "#{CrystalColors::OKGREEN}Where would you like to put the files from #{CrystalColors::OKBLUE + CrystalColors::BOLD}#{domain}#{CrystalColors::ENDC}#{CrystalColors::WARNING}#{path}#{CrystalColors::ENDC} #{CrystalColors::OKGREEN}?#{CrystalColors::ENDC} #{CrystalColors::WARNING}(Default is '/')#{CrystalColors::ENDC}"

  userPath = gets
  userPath = "" if userPath

  cmd = "cd #{userPath}; wget --recursive --page-requisites --adjust-extension --span-hosts --convert-links --restrict-file-names=windows --domains #{domain} --no-parent #{domainPath} "
  puts "Snatching #{CrystalColors::OKBLUE + CrystalColors::BOLD}#{domain}#{CrystalColors::ENDC}#{CrystalColors::WARNING}#{path}#{CrystalColors::ENDC} and saving into #{CrystalColors::WARNING}~/#{userPath}#{CrystalColors::ENDC}"
  Process.run(cmd, shell: true)
  puts "#{CrystalColors::OKGREEN}All done! :)#{CrystalColors::ENDC}"
end
