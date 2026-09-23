function fish_prompt
    # Check if the current directory is the user's home folder
   
   set_color cyan
   echo -n " "


    if test "$PWD" = "$HOME"
        set_color yellow
        echo -n " "
    else
        set_color blue
        echo -n " "
    end

    # Show the shortened directory path (e.g., ~/Downloads or ~/Documents)
    set_color cyan
    echo -n (prompt_pwd)

    # Add a clean arrow pointer at the end
    set_color green
    echo -n " › "

    # Reset text color for your typed commands
    set_color normal
end

