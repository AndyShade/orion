/*
 * Copyright © 2015-2016 Antti Lamminsalo
 *
 * This file is part of Orion.
 *
 * Orion is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * You should have received a copy of the GNU General Public License
 * along with Orion.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.5
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

RowLayout {
    id: root

    property alias text: label.text
    property alias icon: btn.text

    signal clicked()

    Label {
        id: label

        MouseArea {
            anchors.fill: parent
            onClicked: root.clicked()
        }
    }

    IconButtonFlat {
        id: btn
        font.pointSize: 10
        Layout.fillWidth: true
        onClicked: root.clicked()
    }
}
