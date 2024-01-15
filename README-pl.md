![logo](icon/logo.png "logo")

<a href="https://github.com/olegos2/termux-box">English</a>
&nbsp;&nbsp;| &nbsp;&nbsp;
<a href="https://github.com/olegos2/termux-box/blob/main/README-ru.md">Русский</a>
&nbsp;&nbsp;| &nbsp;&nbsp;
Polski

## O aplikacji

`Termux-box` jest skryptem który instaluje prekonfigurowany rootfs z [Box86](https://github.com/ptitSeb/box86), [Box64](https://github.com/ptitSeb/box64), [Wine](https://www.winehq.org/) oraz [DXVK](https://github.com/doitsujin/dxvk). Pozwala to na uruchamianie programów x86 i x86_64 z systemu Windows programs (takich jak gry) na Androidzie korzystając [Termux](https://github.com/termux/termux-app).

`Termux-box` NIE JEST Box64Droid lub Box4Droid.

## Installation
Po instalacji komendą startową jest `termux-box`

Ściągnij i zainstaluj
[Termux](https://f-droid.org/repo/com.termux_118.apk),
[Termux-X11](https://raw.githubusercontent.com/olegos2/termux-box/main/components/termux-x11-arm64-v8a-debug.apk)

Otwórz termux i wklej komendę

```bash
curl -s -o x https://raw.githubusercontent.com/olegos2/termux-box/main/install && chmod +x x && ./x
```

### Dodatkowe moduły
Zaktualizowane
[Termux-X11](https://raw.githubusercontent.com/olegos2/termux-box/main/components/termux-x11-arm64-v8a-debug-latest.apk)
dla dri3 turnip mode.
##

## Konfiguracja
Po instalacji termux-box niektóre ustawienia i zmienne mogą być zmienione w termux-box/preferences.
Aby zainstalować sterowniki Vulkan/OpenGL powinieneś uruchomić Wine i wybrać Mesa oraz paczki D3D w Start Menu -> Install.
Aby zmienić lub dodać zmienne środowiskowe edytuj konfigurację zapisaną w `/sdcard/termux-box/Env.conf`.

#
Wielkie dzięki dla Hugo za pomoc.

[MishkaKolos Discord](https://discord.gg/ZAQnZzbCXq)

## Wsparcie
### Android
* `Android 9+` — podstawowe wsparcie, może nie działać
* `Android 10+` — użytkownicy root
* `Android 11+` — użytkownicy non-root
### Render
* Snapdragon z Adreno 6xx lub Adreno 7xx — Turnip + Zink / Turnip + DXVK dla optymalnej wydajności.
* Qualcomm/Mediatek/Exynos — VirGL

## Możliwości
* `Termux-box` posiada automatyczne aktualizacje, więc nie musisz go często przeinstalowywać.
* TFM działa o wiele szybciej niż niestandardowe wine.
* Jedno z najlższejszych rootfs.
* `Proot` które jest szybsze niż proot-distro.
* `Chroot` z działającym VirGL dla użytkowników root
* Serwer VirGL z wsparciem dxtn (termux virgl nie posiada tego). Mesa-VirGL 18.3.0, 19.1.8, 22.1.7.
* `Turnip` z wsparciem dla adreno 610 i 7xx. `Mesa-zink-11.06.22` zbudowane prez alexvorxx które jest szybsze i ma lepszą kompatybilność. `D8VK + DXVK + VKD3D` oraz `WineD3D`.
* `Prefix-tweaks` skrypt który automatycznie instaluje DirectX, 7-Zip, wiele różnych poprawek rejestru, lepszy taskmgr i notatnik. Niestandardowy motyw i czcionki dają o wiele lepszy wygląd niż standardowy wine prefix. Lepsze ikony. E:\ (Android/data/com.termux/files/Download folder) bez wymogu kopiowania gier do C:\ drive
* Eksperymentalny `wine-tweaks` skrypt który automatycznie instaluje pobrane wine, modyfikuje je dla lepszej szybkości TFM i zmniejsza rozmiar

## Wykorzystane aplikacje

[Box64](https://github.com/ptitSeb/box64) MIT license

[Box86](https://github.com/ptitSeb/box86) MIT license

[Proot](https://github.com/termux/proot) GPL-2.0 license

[DXVK](https://github.com/doitsujin/dxvk) Zlib license

[DXVK-ASYNC](https://github.com/Sporif/dxvk-async)

[DXVK-GPLASYNC](https://gitlab.com/Ph42oN/dxvk-gplasync)

[VKD3D](https://github.com/lutris/vkd3d) LGPL-2.1 license

[D8VK](https://github.com/AlpyneDreams/d8vk) Zlib license

[Termux-app](https://github.com/termux/termux-app) GPLv3 license

[Termux-x11](https://github.com/termux/termux-x11) GPL-3.0 license

[Wine](https://wiki.winehq.org/Licensing)

[Mesa](https://docs.mesa3d.org/license.html) MIT license

[mesa-zink-11.06.22](https://github.com/alexvorxx/mesa-zink-11.06.22)
