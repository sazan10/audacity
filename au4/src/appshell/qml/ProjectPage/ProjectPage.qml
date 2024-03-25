/*
 * SPDX-License-Identifier: GPL-3.0-only
 * MuseScore-CLA-applies
 *
 * MuseScore
 * Music Composition & Notation
 *
 * Copyright (C) 2021 MuseScore BVBA and others
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
import QtQuick 2.15
import QtQuick.Controls 2.15

import MuseScore.Ui 1.0
import MuseScore.UiComponents 1.0
import MuseScore.Dock 1.0
import MuseScore.AppShell 1.0

import Audacity.ProjectScene 1.0

import "../dockwindow"

DockPage {
    id: root

    objectName: "ProjecPage"
    uri: "musescore://project"

    toolBars: [
        DockToolBar {
            id: playToolBar

            objectName: "playToolBar"
            title: qsTrc("appshell", "Play Tool Bar")

            floatable: false
            closable: false
            resizable: false
            separatorsVisible: false

            alignment: DockToolBarAlignment.Center
            contentBottomPadding: 2

            PlayToolBar {
                navigationPanel.section: root.topToolKeyNavSec
                navigationPanel.order: 2

                onActiveFocusRequested: {
                    if (navigationPanel.active) {
                        playToolBar.forceActiveFocus()
                    }
                }
            }
        }
    ]


    central: Text {
        text: "Project View "
    }

}
