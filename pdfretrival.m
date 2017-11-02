%% Look for the dark green %% areas in the code. Enter the information requested.
%% For MatLab Version 2016b on a linux OS

% get the path of the zotero library
%% Enter the path of the zotero storage & pdf storage folder here
folderlocation = '/home/tboland1/.zotero/zotero/9zfyl3jb.default/zotero/storage/';
pdfstorage = '/home/tboland1/test/';

% get the list of folders to search by changing directories
cd(folderlocation)
folder = ls;
folder = strip(folder);

% turn folder into an array
folder = strrep(folder,' ', ' ');
folder = strsplit(folder);
foldersize = length(folder);

% now loop over all the folders and get ppt & pdf's
for i=1:foldersize
    % move into folderlocation_i
    cd(folder{i});
    % get the file type
    temp = ls;
    [a,b]=split(temp,'.');
    element = length(a);
    filetype=a{element};
    filetype=strip(filetype);
    
    % test the file type
    if filetype == 'pdf'
        %% put location of pdf storage here
        copyfile *.pdf /home/tboland1/test/;
        cd ..;
    elseif filetype == 'ppt'
        %% put location of pdf storage here
        copyfile *.ppt /home/tboland1/test/;
        cd ..;
    end
end

