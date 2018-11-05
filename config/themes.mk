# Copyright (C) 2018 ArrowOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


#permissions
PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/privapp-permissions-omni.xml:system/etc/permissions/privapp-permissions-omni.xml

# Packages
PRODUCT_PACKAGES += \
    OmniStyle

# Notifications
PRODUCT_PACKAGES += \
    NotificationsDark \
    NotificationsLight \
    NotificationsPrimary \
    NotificationsXtended

# Accents
PRODUCT_PACKAGES += \
    AccentSluttyPink \
    AccentPixel \
    AccentGoldenShower \
    AccentDeepOrange \
    AccentOmni \
    AccentWhite \
    AccentTeal \
    AccentFromHell \
    AccentBlueMonday \
    AccentSmokingGreen \
    AccentDeadRed \
    AccentRottenOrange \
    AccentDeepPurple

# Themes
PRODUCT_PACKAGES += \
    PrimaryAlmostBlack \
    PrimaryEyeSoother \
    PrimaryBlack \
    PrimaryOmni \
    PrimaryWhite \
    PrimaryColdWhite \
    PrimaryWarmWhite \
    PrimaryDarkBlue \
    PrimaryXtended \
    PrimaryXtendedClear

# QS tile styles
PRODUCT_PACKAGES += \
    QStileCircleTrim \
    QStileDefault \
    QStileDualToneCircle \
    QStileSquircleTrim \
    QStileAttemptMountain \
    QStileCircleDualTone \
    QStileCircleGradient \
    QStileDottedCircle \
    QStileNinja \
    QStilePokesign \
    QStileWavey

