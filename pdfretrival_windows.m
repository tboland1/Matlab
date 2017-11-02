%% This script was made to take all the nonsensically named folders of the zotero library and 
%  place all the pdfs into one folder. This script is general enough to be easily adapted to
%  search for any file type/subfolders content and place it in one folder.

%% The general idea of the script is you tell it a folderlocation. This folder holds another list
%  of other folders. Inside this large list of folders are files which you want to take the
%  contents of and put into one folder. Folder consolidation :D 
%  %% indicate places where you have to place the initial directory and the final directory.
%  Happy Coding!! -- Tara M. Boland 11/2/2017 


%% Look for the dark green %% areas in the code. Enter the information requested.
%% For Windows os Running matlab 2017b

% get the path of the zotero library
%% Enter the path of the zotero storage & pdf storage folder here
folderlocation = 'C:\path\to\large\file\structure';
pdfstorage = 'C:\path\to\consolidation\folder\here';

% get the list of folders to search by changing directories
cd(folderlocation)
% obtain the list of directories to search
temp = ls;
% create an array to hold all the directory names
% turn folder into an array
folder={};
% get the array into the right data type to be looped over
for i=1:length(temp)
    folder{i}=temp(i,1:8);
end

% now loop over all the folders and get the pdf's
for i=3:foldersize
    % move into folderlocation    
    cd(folder{i});
    % get the contents of this folder
    temp1 = ls; 
    % get the length and width of the character array
    [len,width] = size(temp1); 
    %% Maybe need to change len: len is the file which you want to move in my case it was
    % the last element of the array. it could not be the case for you. 
    filetype = temp1(len,1:width);
    %% put location of pdf storage here
    copyfile(filetype, 'C:\Users\dhaiber\Documents\~PhD stuff\Zotero library');
    cd ..;
end

