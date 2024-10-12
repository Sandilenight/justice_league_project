#!/bin/bash
echo "Justice League Manager"
echo "1. Add Member"
echo "2. Add Mission"
echo "3. Display Leaderboard"
echo "4. View Active Missions"
echo "5. Update Mission Status"
read choice
case $choice in
    1) ./add_member.sh ;;
    2) ./add_mission.sh ;;
    3) ./display_leaderboard.sh ;;
    4) ./active_missions.sh ;;
    5) ./update_mission.sh ;;
    *) echo "Invalid option!" ;;
esac
