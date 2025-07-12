# 🧠 RelateFeed

**RelateFeed** is a minimalist social platform for people from marginalized communities to share and connect through real experiences.

## 🎯 Purpose

A validating space where users can:
- Search for an identity group (*e.g.*, autistic, ex-Christian, queer, neurodivergent)
- Read real experiences submitted by others
- **Relate** to posts they identify with
- Share their own story anonymously or with a name

## 🧩 Features

### ✅ Feed-first Design
- No login required to browse
- Public feed shows all experiences by identity

### 🔍 Search by Identity
- Dynamic search bar with **autocomplete**
- **Multi-tag selection** to filter experiences
- Remove tags by clicking or pressing backspace

### ❤️ “Relate” Interaction
- Users can click ✅ **Relate** on a post
- Each user can only relate **once per post**
- Relate count updates live

### 📝 Submit Your Experience
- Floating **+** button opens a submission popup
- Input identity, write experience, submit

### 🔐 Login & Signup
- Login required to **relate** or **submit**
- Signup with username + password
- Authenticated via **JSONBin.io** backend

## 🛠 Tech Stack

| Layer      | Stack                      |
|------------|----------------------------|
| Frontend   | [Alpine.js](https://alpinejs.dev), [Tailwind CSS](https://tailwindcss.com) |
| Backend    | [JSONBin.io](https://jsonbin.io) for data + user auth |
| Hosting    | [Neocities](https://neocities.org) static deployment |

## 📦 JSONBin Structure

| Bin Type   | Fields |
|------------|--------|
| `USERS_BIN` | `[{ username, password }]` |
| `EXP_BIN`   | `[{ id, username, identity, text, relateCount, relaters[] }]` |

> ✅ **Relaters prevent spamming:** Users can only relate to each experience once.

## 📚 Example Flow

1. User searches “autism”
2. Sees experiences:
   - *“Eye contact makes me feel unsafe.”*
   - *“Processed food feels more predictable.”*
3. Relates to stories they identify with
4. Optionally submits their own
5. Builds a sense of community & understanding

---

✨ *Made for connection. Built with care.*

