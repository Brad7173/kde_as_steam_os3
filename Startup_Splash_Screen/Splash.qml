 
/*
 *   Copyright 2014 Marco Martin <mart@kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License version 2,
 *   or (at your option) any later version, as published by the Free
 *   Software Foundation
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */
 
    import QtQuick 2.5
    import QtQuick.Window 2.2
    
   AnimatedImage { 
            id: root
            source: "images/Animated_loading_of_the_KDE_19.gif"
            property int stage
    
        onStageChanged: {
            if (stage == 2) {
                introAnimation.running = true;
            } else if (stage == 5) {
                introAnimation.target = busyIndicator;
                introAnimation.from = 1;
                introAnimation.to = 0;
                introAnimation.running = true;
            }
        }
    

        Item {
            id: content
            anchors.fill: parent
            opacity: 0
            TextMetrics {
                id: units
                text: "M"
                property int gridUnit: boundingRect.height
                property int largeSpacing: units.gridUnit
                property int smallSpacing: Math.max(2, gridUnit/4)
            }

            Image {
                id: logo
                //match SDDM/lockscreen avatar positioning
                property real size: units.gridUnit * 8

                anchors.centerIn: parent

                source: "images/plasma.svgz"

                sourceSize.width: size
                sourceSize.height: size
            }
    

            Row {
                spacing: units.smallSpacing*2
                anchors {
                    bottom: parent.bottom
                    right: parent.right
                    margins: units.gridUnit
                }

                Image {
                    source: "images/kde.svgz"
                    sourceSize.height: units.gridUnit * 2
                    sourceSize.width: units.gridUnit * 2
               }
           }
       }
   
       OpacityAnimator {
           id: introAnimation
           running: false
           target: content
           from: 0
           to: 1
           duration: 1000
           easing.type: Easing.InOutQuad
       }
   } 
