#!/usr/bin/perl

#usage msg
die "Please provide the file extensions to rename! $!\n" unless ($#ARGV+1) > 1;


#cmdline parameters: all stored in '@ARGV' with $ARGV[0] = 1st arg, $ARGV[1] = 2nd arg, ...
@files = `ls *.$ARGV[0]`;  #read all filenames ending with the extension given as the 1st cmdline parameter 
#print @files;             #check that the correct files were read in
chop @files;               #remove the newline character from the filenames (it is appended by the ls cmd)


$count = 0;
@new_name;
foreach $file (@files)
{
  if ($file =~ m|_([a-z]{3}[0-9]{3})_|)     #extract each student's abc123 from the filename  
  {
    $new_name[$count] = "$1.$ARGV[0]";      #create a new file name, 'abc123.EXTENSION'
    $count +=1;
  }
}


$count = 0;
foreach $file (@files)
{
  #CAUTION: check print output before uncommenting the renaming line!
  #print "mv '$file' $new_name[$count]"; 
  `mv "$file" $new_name[$count]`;  #rename all files to be be 'abc123.EXTENSION'
  $count +=1;
}


#remove the redundant submission txt files
`rm *.txt`;
