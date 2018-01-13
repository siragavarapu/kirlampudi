% Sample interactive session

% Author: Shrikar Iragavarapu, Arts and Sciences Student
% Washington University in St. Louis
% Copyright 2018
%--------------------------------------------------------------------------

clc;
clear;

disp(' ');
disp('<><><><><><><><><><><><><><><><><><>');
disp('Welcome to suicide help hotline ...');
disp('<><><><><><><><><><><><><><><><><><>');
disp(' ');

key_words = {'sorry';'homeless';'hopeless';'hungry';'kill';'money'};

echo_sentence = {'What made you feel sorry and how can I help you?';...
    'Did you know that you get a free meal at noon in the church at the corner of 77th street and 5th avenue?';...
    'If you have Netflix, watch just any episode of The Office; you might feel better ...';...
    'Did you know that there is a buy one get one free deal at local McDonalds; go get something for yourself ...';...
    'What makes you feel this way?';...
    'Do you think that money can buy happiness?'};

continue_flag = 'y';
success_index = [];

while(continue_flag == 'y'),
    disp(' ');
    str = input('Please say in a few words how you are feeling today: ','s');
    
    for i = 1:length(key_words),
        if ~isempty(findstr(str,key_words{i})),
            success_index = i;
        end;
    end;
    
    if ~isempty(success_index),
        disp(' ');
        disp(echo_sentence{success_index});
        disp(' ');
    else,
        disp(' ');
        disp('Sorry our database is not extensive enough to find a solution for your current condition.  Try again!');
        disp(' ');
    end;
    
    continue_flag = input('Would you like to continue the therapy session [y/n]: ','s');
    if (continue_flag == 'n'),
        disp(' ');
        disp('Exiting ...');
        disp(' ');
        disp('Thank you for using our therapy service and have a great day!');
        disp(' ');
    end;
end;

% End