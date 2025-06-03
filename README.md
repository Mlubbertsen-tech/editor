<style>
.live-button {
    display: inline-block;
    padding: 12px 24px;
    background: linear-gradient(135deg,rgb(241, 232, 99) 0%,rgb(197, 155, 17) 100%);
    color: black;
    text-decoration: none;
    border-radius: 8px;
    font-weight: bold;
    margin: 20px 0;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s, box-shadow 0.2s;
    display: block;
    margin-left: 25%;
    margin-right: auto;
    width: fit-content;    
}

.live-button:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
    color: black;
}

.live-button:active {
    transform: translateY(0);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    color: black;
}
</style>

# Webitz Frontend Code Editor

## The place to be for frontend developers! 🎉

### Translations:
[English](README.md#english) | [Nederlands](README.md#nederlands)

---

## English

**Webitz** is a powerful and fun web-based code editor for all frontend developers! 🚀

<a href="https://webitz.vercel.app" class="live-button">Try it Live on Vercel!</a>

### Main Features

- **Advanced Editor:** Monaco-based editor with custom syntax highlighting and smart code completion.
- **File Management:** Integrated file system with drag & drop and context menu actions.
- **Live Preview:** Real-time preview of your code changes with automatic updates. See your work instantly!
- **Smart Features:** Autosave, keyboard shortcuts, and breadcrumb navigation for super-efficient coding.

> **Get started:**  
> Jump right in and visit the [Editor](./editor/) to start coding now! ✨

---

### Known Issues

- Files in folders (nested) are not yet displayed. This is the **biggest issue** I have right now, and I'm working on it
- Some browsers may not fully support all file system features (especially on mobile/tablet).
- Dark mode is default — if you love light mode, let us know! 

---

Want to know more?  
Check out the source files in the `editor/` folder and try the demo on the main page (`index.html`).  
Icons and manifest support are included for a better experience on modern devices. 📱

---

## Nederlands

**Webitz** is een krachtige en vrolijke webgebaseerde code-editor voor frontend developers! 🥳

<a href="https://webitz.vercel.app" class="live-button">Probeer het Live op Vercel!</a>

### Belangrijkste functies

- **Geavanceerde Editor:** Monaco-gebaseerde editor met aangepaste syntaxismarkering en slimme codeaanvulling.
- **Bestandsbeheer:** Geïntegreerd bestandssysteem met ondersteuning voor slepen en neerzetten en contextmenu's.
- **Live Voorbeeld:** Realtime voorvertoning van je codewijzigingen met automatische updates. Zie direct resultaat!
- **Slimme Functies:** Automatisch opslaan, sneltoetsen en breadcrumb-navigatie voor supersnel coderen.

> **Aan de slag:**  
> Ga meteen aan de slag in de [Editor](./editor/) en begin direct met coderen! 🎈

---

### Bekende problemen

- Bestanden in mappen (genest) worden nog niet getoond. Dit is de **grootste issue** dat ik nu heb, en ik werkt er aan
- Niet alle browsers ondersteunen het volledige bestandssysteem (vooral mobiel/tablet).
- Donkere modus is standaard — ben jij fan van licht? Laat het weten! 

---

Wil je meer weten?  
Bekijk de bronbestanden in de `editor/` map en de demo op de hoofdpagina (`index.html`).  
Icons en manifest ondersteuning zijn aanwezig voor een betere gebruikerservaring op moderne apparaten. 📱