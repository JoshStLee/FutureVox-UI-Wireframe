#!/usr/bin/python3

#
# This file is part of KDDockWidgets.
#
# SPDX-FileCopyrightText: 2023 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
# Author: Renato Araujo <renato.araujo@kdab.com>
#
# SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only
#
# Contact KDAB at <info@kdab.com> for commercial licensing options.
#

"""
Script to fix bugs in code generated by shiboken-generator vr2
"""

import sys
import re


def removeExtraNamespaceForDefaultEnumValue(filename):
    """
    Remove namespace from default flag value
    this is a shiboken2 bug fixed on shiboken6
    """
    regex = re.compile(r"\s=\s[^\s]+::{}")
    newContent = ""
    with open(filename, encoding='utf-8') as f:
        for line in f:
            newContent += re.sub(regex, ' = {}', line)

    with open(filename, "w", encoding='utf-8') as f:
        f.write(newContent)


# Usage: <script> <list-of-files>
# It will fix the file inplace
if __name__ == '__main__':
    for fileToFix in sys.argv[1:]:
        print("Fixup: {}".format(fileToFix))
        removeExtraNamespaceForDefaultEnumValue(fileToFix)
