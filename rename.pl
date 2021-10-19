#!/usr/bin/perl


#instructions for graders using BB
#(1)  click 'grade center'
#(2)  click 'full grade center'
#(3)  hover over the assignment column name, then click drop-down menu arrow when it appears
#(4)  click 'assignment file download'
#(5)  click 'show all' in the bottom right
#(6)  click the 1st checkbox on the 'name' column to select all submissions
#(7)  click submit
#(8)  click the 'download assignments now' link
#(9)  navigate to the download, unzip the file: unzip gradebook*
#(10) run the script below to rename the student submissions into managable names
#(--) tip: enforce a standard submission format -- e.g. all files submitted inside a zip file OR ELSE ..


#cmdline parameters: all stored in '@ARGV' with $ARGV[0] = 1st arg, $ARGV[1] = 2nd arg, ...
$extension = 'zip';          #IMPORTANT: change to rename other types of files
@files = `ls *.$extension`;  #read in all files ending in $extension
#print @files;               #check that the correct files were read in
chop @files;                 #remove the newline character from the filenames (default appended by `ls`)


sub change_name
{
  foreach $file (@files)
  {
    if ($file =~ m|_([a-z]{3}[0-9]{3})_|)     #extract each student's abc123 from $file (and default stored in $1)
    {
      $abc123 = $1;
      $param = $_[0];
      if ($param =~ /^print$/)
      {
        print "mv $file $abc123.$extension\n";
      }
      elsif ($param =~ /^rename$/)
      {
        `mv "$file" "$abc123.$extension"`;  #rename the file to 'abc123.extension'
      }
    }
  }
}


print "CAUTION: do you really want to run these commands?>>>";
change_name('print');
print "<<<CAUTION: verify the above statements as correct before proceeding.";

print "\n\nproceed with renaming [yes/no]: ";
if (<> =~ /^yes$/)
{
  change_name('rename');
}
else
{
  print "\nexiting process without executing file renames.\n";
  exit 0;
}
