import { QuartzComponent, QuartzComponentConstructor, QuartzComponentProps } from "./types"
import { classNames } from "../util/lang"

interface Options {
  title: string
  links: Record<string, string>
}

export default ((opts?: Options) => {
  const NavBar: QuartzComponent = ({ fileData, cfg, displayClass }: QuartzComponentProps) => {
    const title = opts?.title ?? cfg.pageTitle ?? "Untitled"
    const links = opts?.links ?? {}
    return (
      <nav class={classNames(displayClass, "navbar")}>
        <h1><a href="/">{title}</a></h1>
        <ul>
          {Object.entries(links).map(([text, link]) => (
            <li><a href={link}>{text}</a></li>
          ))}
        </ul>
      </nav>
    )
  }

  NavBar.css = `
  .navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 2rem;
  }
  .navbar h1 {
    margin: 0;
  }
  .navbar ul {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
    gap: 1.5rem;
  }
  `

  return NavBar
}) satisfies QuartzComponentConstructor
