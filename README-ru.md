![logo](icon/logo.png "logo")

<a href="https://github.com/olegos2/termux-box">English</a>
&nbsp;&nbsp;| &nbsp;&nbsp;
Русский

## О Termux-box

`Termux-box` это скрипт для установки готовых rootfs с установленными [Box86](https://github.com/ptitSeb/box86), [Box64](https://github.com/ptitSeb/box64), [Wine](https://www.winehq.org/) и [DXVK](https://github.com/doitsujin/dxvk). Даёт возможность запускать x86 и x86_64 windows программы (такие как игры) на Android используя [Termux](https://github.com/termux/termux-app).

`Termux-box` это не Box64Droid и не Box4Droid.

## Установка
После установки стартовая команда в termux это `termux-box`

Загрузите и установите
[Termux](https://f-droid.org/repo/com.termux_118.apk),
[Termux-X11](https://raw.githubusercontent.com/olegos2/termux-box/main/components/termux-x11-arm64-v8a-debug.apk)

Откройте termux и вставьте команду ниже

```bash
curl -s -o x https://raw.githubusercontent.com/olegos2/termux-box/main/install && chmod +x x && ./x
```

### Дополнительные компоненты
Обновлённый
[Termux-X11](https://raw.githubusercontent.com/olegos2/termux-box/main/components/termux-x11-arm64-v8a-debug-latest.apk)
для dri3 turnip режима.
##

## Конфигурация
После установки termux-box некоторые настройки и переменные могут быть изменены в termux-box/preferences меню.
Чтобы установить Vulkan/OpenGL драйвера вам нужно запустить Wine и выбрать Mesa и D3D библиотеки в меню Пуск -> Установка.
Для изменения или добавления переменной среды редактируйте конфигурацию сохранённую в `/sdcard/termux-box/Env.conf`.

#
Огромная благодарность Hugo за помощь.

[Discord Михаила Колоса](https://discord.gg/ZAQnZzbCXq)

## Поддерживаемые устройства
### Android
* `Android 9+` — простая поддержка, может не заработать
* `Android 10+` — root пользователи
* `Android 11+` — пользователи без root
### Рендер
* Snapdragon с Adreno 6xx или Adreno 7xx — Turnip + Zink / Turnip + DXVK с высокой скоростью.
* Qualcomm/Mediatek/Exynos — VirGL

## Возможности
* `Termux-box` обновляется автоматически, вам необязательно преустанавливать его каждый раз.
* TFM работает значительно быстрее с кастомным wine.
* Самые маловесящие rootfs.
* `Proot` который быстрее чем proot-distro.
* `Chroot` с рабочим VirGL для root пользователей
* VirGL сервер с поддержкой dxtn (termux virgl не может так сделать). Mesa-VirGL 18.3.0, 19.1.8, 22.1.7.
* `Turnip` с поддержкой adreno 610 and 7xx. `Mesa-zink-11.06.22` созданный с репозитория alexvorxx который быстрее и имеет большую совместимость. `D8VK + DXVK + VKD3D` и `WineD3D`.
* `Prefix-tweaks` скрипт колторый автоматически устанавливает DirectX, 7-Zip, вариативные фиксы регистра, улучшенный диспетчер задач и заметки. Кастомная тема, улучшенные шрифты которые выглядят намного лучше в сравнении с обычными. Улучшенные иконки. E:\ (Android/data/com.termux/files/Download folder) для лучшей производительности без надобности копировать игры на диск C:\
* Эксперементальный `wine-tweaks` скрипт автоматически устанавливаемый загруженный wine, кастомизирующий его для лучшей скорости TFM и уменьшенного размера

## Сторонние приложения

[Box64](https://github.com/ptitSeb/box64) MIT лицензия

[Box86](https://github.com/ptitSeb/box86) MIT лицензия

[Proot](https://github.com/termux/proot) GPL-2.0 лицензия

[DXVK](https://github.com/doitsujin/dxvk) Zlib лицензия

[DXVK-ASYNC](https://github.com/Sporif/dxvk-async)

[DXVK-GPLASYNC](https://gitlab.com/Ph42oN/dxvk-gplasync)

[VKD3D](https://github.com/lutris/vkd3d) LGPL-2.1 лицензия

[D8VK](https://github.com/AlpyneDreams/d8vk) Zlib license

[Termux-app](https://github.com/termux/termux-app) GPLv3 лицензия

[Termux-x11](https://github.com/termux/termux-x11) GPL-3.0 лицензия

[Wine](https://wiki.winehq.org/Licensing)

[Mesa](https://docs.mesa3d.org/license.html) MIT лицензия

[mesa-zink-11.06.22](https://github.com/alexvorxx/mesa-zink-11.06.22)
