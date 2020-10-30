#!/usr/bin/perl


@files = `ls *.zip`;

print @files;

$count;
@new_name;
chop @files;
foreach $file (@files)
{
  if ($file =~ m|_([a-z]{3}[0-9]{3})_|)
  {
    $new_name[$count] = "$1.zip";
    $count +=1;
  }
}

$count = 0;
foreach $file (@files)
{
  `mv "$file" $new_name[$count]`;
  $count +=1;
}
