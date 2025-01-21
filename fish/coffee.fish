function coffee
        if test (count $argv) -le 0
                echo "Pass 'start' or 'stop' as argument"
                return 1
        end
        if [ $argv[1] = "start" ]
        slacker -message "paro a coffee" -groups "sistemas"
        curl -s -o /dev/null \
            -H "Content-Type: application/json; charset=utf-8" \
            -H "Authorization: Bearer TOKEN" \
            https://slack.com/api/users.profile.set \
            -d '
            {
                "profile": {
                    "status_text": "Coffee break",
                    "status_emoji": ":coffee:",
                }
            }
            '
        else if [ $argv[1] = "stop" ]
        slacker -message "back" -groups "sistemas"
        curl -s -o /dev/null \
            -H "Content-Type: application/json; charset=utf-8" \
            -H "Authorization: Bearer TOKEN" \
            https://slack.com/api/users.profile.set \
            -d '
            {
                "profile": {
                    "status_text": "",
                    "status_emoji": "",
                }
            }
            '
        else
                echo "Pass 'start' or 'stop' as argument"
        end
end