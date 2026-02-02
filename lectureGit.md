---
title: Journeyman
subtitle: Git and Github
author: Julien Cordry
theme: "Antibes"
colortheme: "beetle"
fonttheme: "structuresmallcapsserif"
---

# Introduction

---

## Today:

- History
- Definitions
- Tools

---

# History

---

## A long long time ago...

![Saving your project as you progress](img/versions.png)

---

## And then...

#### Version control

> Version control, also known as source control, is the practice of tracking
> and managing changes to software code. Version control systems are software
> tools that help software teams manage changes to source code over time.

Source: [[atlassian.com]{.underline}](https://atlassian.com)

---

## Version control: where it comes from?

- 1975: **Source Code Control System**, Bell Labs.
- 1982: Revision Control System (**RCS**), GNU, stores a set of **Deltas**.
- 1995: Helix Core, **Perforce**, flexibility of tools. Today, wraps around
  git.
- 2000: **Subversion** (SVN), Apache, allows concurrent access to a shared
  repository.
- 2005: **Git**, as a side project from the Linux devs, decentralised.

---

## Git

![Git](img/Git-logo.png)

---

![source: xkcd](img/xkvd.jpg)

---

# Definitions

---

## Distinction

The difference between `git` and `github`:

- `Git` is:
  - The software that manages the versions of the code.
  - Open source.
- `Github` is:
  - The backend.
  - A website, that offers a popular free **`remote`** hosting service.
  - Owned by Microsoft.

There are alternatives to `Git`. There are alternatives to `Github`.

---

## Definitions

- A **`repository`** (or repo): a central storage location for managing and
  tracking changes in files and directories.
- A **`remote`**: a common repository that all team members use to exchange
  their changes.
- A **`commit`**: a snapshot or milestone along the timeline of a Git project.
- A **`branch`**: a pointer to a single snapshot of your changes (a commit) / a
  label with a name on a `commit`.

---

## More definitions

- **`Checking out`**: switching to a specific branch or commit. Further commits will happen in this
  particular branch (independently from the rest of the development).
- **`Merging`**: resolving the differences between two branches:
  1. Checkout the branch that you want to receive the changes,
  2. You merge the branch that contains the changes.
  3. The merge will be another commit. We then push it so that others can
     access this newer version.

---

## Verbs

- **`clone`**: create a local copy from a remote repo.
- **`pull`**, **`fetch`**: get the latest changes from the remote.
- **`push`**: share the local changes with the remote.
- **`stage`**, **`add`**: make a list of files to be committed.
- **`commit`**: make a snapshot of the current project. Requires a written
  comment.  E.g.: "level 10, final version"

---

![Initial state](img/terms01.png)

---

![Clone remote repo](img/terms02.png)

---

![Checkout commit](img/terms03.png)

---

![Create branch](img/terms04.png)

---

![Commit 1](img/terms05.png)

---

![Commit 2](img/terms06.png)

---

![Push to remote](img/terms07.png)

---

![Checkout main](img/terms08.png)

---

![Merge bugFix](img/terms09.png)

---

![Push to remote](img/terms10.png)

---

## The order of the verbs matter 1/2

![](img/commands01.png)

---

## The order of the verbs matter 2/2

![](img/commands02.png)

---

##  Typical workflow

1. **`Clone`** the project from a remote. This gives us a local working copy of
   the project. You only need to do that if you don't already have a local
   working copy of the project.
2. **`Checkout`** a branch and **`pull`** all the data from the remote or create a
   new one.
3. Start your work on it. I.e.: add some files or modify existing files.
4. **`Stage`** the files you want to include in your commit.
5. **`Commit`** with a useful message. Your changes will be local only.
6. **`Pull`** the changes others will have done from the remote.
7. **`Push`** your changes into the remote. You can choose which branch of the 8
   remote this new commit will go into.
9. Repeat from step 3.

---

# Branching

---

## Why would you want to branch?

A branch is nothing more than a label over a `commit`. It evolves independently
from the rest of the development. I.e.: making `commits` over this branch is not
going to change the other branches.

#### Why it's great:

- Keep your working project clean. Don't add mess to a complex project.
- Experiment on the side, either on your own personal branch, or just with a
  subset of your team mates.
- Eventually merge your changes back to a shared branch.
- Keep track of your releases.
- Branching is lightweight and fast.

---

## What to do?

***Branch early. Branch frequently.***

---

## A Note

Remember that **to checkout a branch** means: to switch to another branch,
different to the one we are currently working on.

#### Why do I need a branch?

- You can also **`checkout`** a **`commit`**. Commits are identified by a hex
  value.
- When you do, the label to your local working copy of the project, aka
  **`HEAD`**, will move to this commit.
- We say that the `HEAD` is **detached** if there is no branch currently where
  `HEAD` is.
- If you then make more commits, those commits will be difficult to identify
  and get to, because there is no branch there.

---

## What not to do

***Don't detach your `HEAD`.***

---

## When Merge goes wrong: part 1

Suppose the following scenario:

- You are working on the project within a branch "`config`". Say your are
  modifying `BaseGame.ini`
- You've been dutiful. You've committed your changes.
- Your changes are finished, so you want to merge your changes into a shared
  branch "`develop`".
- You **`checkout`** `develop`.
- You **`pull`** (you get the latest version of `develop`).
- **HOWEVER**, someone in your team has been modifying `BaseGame.ini` in the
  `develop` branch (possibly without telling you).

---

## When Merge goes wrong: part 2

Now, we have a problem.

- Because we have two conflicting versions of `BaseGame.ini`:
  - one in `develop`,
  - one in `config`.
- We will need to express how those two conflicting versions will merge:
  - Will we overwrite the one from `develop`? (This is called **`Rebase`**)
  - Will we go step by step and decide which line from `develop` we want to
    keep and which one we want to erase for the version in `config`?
- You can establish a strategy that should generally applied.

---

# Tools

---

## Gitflow

[[**Have a look here**]{.underline}](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

![Example gitflow](img/gitflow.png)

---

## Git LFS

Git Large File Storage:

- An open source Git extension for versioning large files
- This adds a new verb: **track**.
- This says "I want to keep track of changes over files that are large and/or
  non textual".
- Suppose one of you is making drawing in PhotoShop. You will be able to say
  "let's track all PSD files".

More [[**here**]{.underline}](https://git-lfs.com/).

---

## Remote hosting

- [[**Github**]{.underline}](https://github.com)
- [[**Gitlab**]{.underline}](https://about.gitlab.com/)
- [[**Bitbucket**]{.underline}](https://bitbucket.org/product/)

---

## Visual & Productivity Tools

GUI clients:

- GitKraken
- SourceTree
- GitHub Desktop

IDE integration:

- VS Code
- JetBrains Rider
- Visual Studio

*Benefit:* see branches, merges, conflicts visually.

---

## Don't ignore this

- Pushing large changes can use a lot of bandwidth.
- Temporary files are not necessary to keep the project in good working
  condition. E.g.: Photoshop temp files.
- The `.gitignore` file in your repository can list all the files that you
  want to ignore when committing.

```
*.obj
*.exe
Build/*
```

You can use a gitignore generator:
[[**gitignore.io**]{.underline}](https://www.toptal.com/developers/gitignore).

---

# Unreal

---

## Unreal Engine & Version Control

- Unreal projects are **large and asset-heavy**
- Mix of:
  - C++ source code
  - Blueprints
  - Binary assets (textures, meshes, audio)
- Version control is **mandatory**, not optional

**Key challenge:** binaries don't merge like code.

---

## Unreal Project Structure (Git-Relevant)

Common folders:

- `Source/`: C++ code (**track with Git**).
- `Content/`: Assets & Blueprints (**track with Git LFS**).
- `Config/`: Project settings (**track with Git**).

Do **NOT** track:

- `Binaries/`
- `DerivedDataCache/`
- `Intermediate/`
- `Saved/`

---

## `.gitignore` for Unreal

Typical Unreal `.gitignore` excludes:

- Build outputs.
- Cached data.
- Temporary files.

**Why:**

- Reduces repo size.
- Avoids conflicts.
- Speeds up cloning.

Unreal + Git works best with a **clean ignore file**.

---

## Git LFS for Unreal Assets

Why Git LFS?

- Unreal assets are often:
  - `.uasset`.
  - `.umap`.
  - Large binaries.

Git LFS:

- Stores large files outside normal Git history.
- Keeps repo fast and usable.

**Standard practice in Unreal projects.**

---

## Branching Strategy for Unreal Teams

Common setup:

- `main` / `release`: stable game.
- `develop`: integration branch.
- `feature/*`: new mechanics, levels.
- `hotfix/*`: urgent bug fixes.

**Rule:**
Never experiment directly on `main`.

---

## Working with Blueprints

- Blueprints are binary files.
- Cannot be merged line-by-line.
- Causes conflicts if edited by multiple people.

Best practices:

- One owner per Blueprint.
- Split logic into smaller Blueprints.
- Communicate before editing shared assets.

---

## Unreal Editor + Git

- Unreal Editor detects Git repositories.
- Can:
  - Show file status.
  - Submit changes.
- Limited conflict resolution.

**Recommendation:**
Use Unreal Editor + external Git client together.

---

## Common Unreal + Git Mistakes

- Forgetting Git LFS.
- Committing `DerivedDataCache`.
- Letting multiple people edit the same Blueprint.
- Huge commits with unrelated changes.

**Fix:** discipline + workflow rules.

---

## Unreal + Git: Key Takeaways

- Git works well with Unreal **if configured correctly**.
- Git LFS is essential.
- Structure and communication matter more than tools.
- Version control saves *months* of work.

---

# Conclusion

---

## To summarise

- Anyone wishing to work in the games industry has to be proficient in Git.
- It is used by Indie studios as by AAA.
- In games:
  - Git + LFS + hosting platform = standard setup
- If you are not very technical, learn the basics and ask for help for the
  most difficult aspects from your teammates.
- Always be mindful of the branch you are working on.
- Before you push, make sure you are not destroying your remote's main branch.

---

## Today, we discussed

Git:

- History
- Definitions
- Tools

---

## Any questions?

**Tutor**: Julien Cordry

**Email**: **[[j.cordry@tees.ac.uk]{.underline}](mailto:j.cordry@tees.ac.uk)**

**Office**: G0.46B

See Blackboard for online materials: **[[https://bb.tees.ac.uk]{.underline}](https://bb.tees.ac.uk)**
