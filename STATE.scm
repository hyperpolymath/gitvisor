;;; STATE.scm - Gitvisor Project Checkpoint
;;; Format: Guile Scheme S-expressions
;;; Purpose: Preserve AI conversation context across sessions
;;; Reference: https://github.com/hyperpolymath/state.scm

;;;============================================================================
;;; METADATA
;;;============================================================================

(define metadata
  '((version . "0.1.0")
    (schema-version . "1.0")
    (created . "2025-12-08")
    (updated . "2025-12-08")
    (project . "gitvisor")
    (repo . "github.com/hyperpolymath/gitvisor")))

;;;============================================================================
;;; PROJECT CONTEXT
;;;============================================================================

(define project-context
  '((name . "Gitvisor")
    (tagline . "Hyper-customizable dashboard for unified Git platform management")
    (version . "0.1.0")
    (license . "MIT OR AGPL-3.0 WITH Palimpsest-0.8")
    (rsr-compliance . "gold")

    (tech-stack
     ((backend . "Elixir 1.17 / Phoenix 1.7 / Absinthe GraphQL")
      (frontend . "ReScript / TEA pattern / Deno")
      (tui . "Ada 2022 / SPARK")
      (analytics . "Julia 1.10 / DataFrames.jl")
      (database . "Multi-adapter: ArangoDB, CubDB, XTDB")
      (crypto . "BLAKE3, SHAKE3-512, Ed448, Dilithium (stub), Kyber (stub)")))

    (satellite-repos
     ((echidnabot . "Formal validation & property-based testing bot")
      (rhodibot . "RSR compliance enforcement bot")
      (cadre-router . "Request routing framework")))))

;;;============================================================================
;;; CURRENT POSITION
;;;============================================================================

(define current-position
  '((phase . "v0.1 - Core Platform Integration")
    (overall-completion . 55)

    (components
     ((backend-api
       ((status . "functional")
        (completion . 70)
        (notes . "GitHub/GitLab adapters working, GraphQL schema operational")))

      (frontend-dashboard
       ((status . "mvp-working")
        (completion . 50)
        (notes . "Basic dashboard functional, customization incomplete")))

      (analytics-module
       ((status . "complete-not-integrated")
        (completion . 80)
        (notes . "Julia module finished, awaiting GraphQL integration")))

      (terminal-ui
       ((status . "foundation")
        (completion . 15)
        (notes . "Ada/SPARK skeleton exists, minimal implementation")))

      (cryptography
       ((status . "classical-working")
        (completion . 65)
        (notes . "BLAKE3/Ed448 functional, post-quantum stubs only")))

      (testing
       ((status . "scaffolding-only")
        (completion . 30)
        (notes . "CI/CD exists but limited actual test code")))

      (documentation
       ((status . "excellent")
        (completion . 85)
        (notes . "Architecture docs comprehensive, RSR Gold compliant")))))

    (working-features
     ("GitHub adapter - full GraphQL implementation"
      "GitLab adapter - complete REST implementation"
      "GraphQL API with queries, mutations, subscriptions"
      "Database abstraction layer with CubDB/ArangoDB/XTDB"
      "ReScript frontend with tab navigation"
      "Repository, issue, PR listing and management"
      "Platform connection management"
      "Julia analytics: commit/issue/PR analysis, health scores"
      "Echidnabot formal validation framework"
      "Rhodibot RSR compliance checking"
      "Container build with Wolfi"
      "Nix flake dev environment"))))

;;;============================================================================
;;; ROUTE TO MVP v1.0
;;;============================================================================

(define route-to-mvp
  '((target-version . "1.0.0")
    (definition . "Production-ready unified Git dashboard with full customization")

    (milestones
     ((v0.2
       ((name . "Dashboard Customization")
        (status . "pending")
        (items
         ("Implement widget persistence in database"
          "Widget drag-and-drop reordering"
          "Custom widget sizing"
          "Dashboard layout templates"
          "User preference storage"))))

      (v0.3
       ((name . "Analytics Integration")
        (status . "pending")
        (items
         ("Wire Julia module to GraphQL resolvers"
          "Add analytics dashboard tab"
          "Commit frequency visualizations"
          "Issue/PR metrics display"
          "Repository health score widget"
          "Team velocity tracking"))))

      (v0.4
       ((name . "Extended Platform Support")
        (status . "pending")
        (items
         ("Gitea adapter implementation"
          "Codeberg adapter implementation"
          "Self-hosted GitLab improvements"
          "Platform-agnostic unified API"))))

      (v0.5
       ((name . "Custom Widgets API")
        (status . "pending")
        (items
         ("Widget plugin architecture"
          "JavaScript widget runtime"
          "Widget marketplace foundation"
          "Third-party widget sandboxing"))))

      (v1.0
       ((name . "Production Release")
        (status . "pending")
        (items
         ("Comprehensive test coverage (>80%)"
          "Security audit completion"
          "Performance optimization"
          "Production deployment guides"
          "API stability guarantee"
          "User documentation"))))))))

;;;============================================================================
;;; BLOCKERS & ISSUES
;;;============================================================================

(define blockers-and-issues
  '((critical
     ())  ;; No critical blockers currently

    (high-priority
     ((missing-tests
       ((description . "Limited test infrastructure despite CI/CD scaffolding")
        (impact . "Risk of regressions, blocks confident refactoring")
        (needed . "Test suites for crypto, adapters, GraphQL resolvers")))

      (analytics-not-wired
       ((description . "Julia analytics module complete but isolated")
        (impact . "Users cannot access analytics features")
        (needed . "GraphQL resolvers calling Julia via Port or NIF")))

      (graphql-types-incomplete
       ((description . "Some GraphQL types referenced but not fully defined")
        (impact . "Frontend-backend type mismatches possible")
        (needed . "Complete Repository, Issue, PullRequest, User, Dashboard types")))))

    (medium-priority
     ((post-quantum-stubs
       ((description . "Dilithium/Kyber are stub implementations")
        (impact . "Not quantum-resistant until implemented")
        (needed . "NIFs to liboqs or pure Elixir implementations")))

      (dashboard-persistence
       ((description . "Widget customizations not persisted")
        (impact . "User dashboard resets on refresh")
        (needed . "Database storage for user dashboard state")))

      (frontend-api-gaps
       ((description . "Api.res has incomplete query implementations")
        (impact . "Some features non-functional in UI")
        (needed . "Complete GraphQL client queries")))))

    (low-priority
     ((tui-minimal
       ((description . "Ada/SPARK TUI is skeleton only")
        (impact . "Terminal users have no interface")
        (needed . "Full TUI implementation after web MVP")))

      (missing-platforms
       ((description . "Gitea/Codeberg adapters not implemented")
        (impact . "Users of those platforms excluded")
        (needed . "v0.4 milestone implementation")))

      (site-generation
       ((description . "site/ and site-zola/ directories referenced but missing")
        (impact . "No project website")
        (needed . "Zola site generation setup")))))))

;;;============================================================================
;;; QUESTIONS FOR MAINTAINER
;;;============================================================================

(define questions-for-maintainer
  '((architecture
     ("Should analytics integration use Erlang Port (FFI) or Julia-to-WASM compilation?"
      "Is the multi-database adapter pattern intentional for deployment flexibility?"
      "Should post-quantum crypto be deferred to v1.0+ or prioritized earlier?"))

    (priorities
     ("Is v0.2 (dashboard customization) higher priority than v0.3 (analytics)?"
      "Should TUI development be paused until web MVP is solid?"
      "Are there specific users/teams waiting on Gitea/Codeberg support?"))

    (integration
     ("Should echidnabot run as part of gitvisor's CI or remain standalone?"
      "Is rhodibot meant to be integrated into gitvisor or stay external?"
      "How should cadre-router relate to the Phoenix router?"))

    (deployment
     ("Is the target deployment Kubernetes, Fly.io, bare metal, or multiple?"
      "Should the Wolfi container be the primary deployment artifact?"
      "Are there plans for a managed SaaS offering?"))

    (testing
     ("What test coverage percentage is the v1.0 target?"
      "Should property-based testing (StreamData) be prioritized?"
      "Is there a preference for testing framework (ExUnit defaults?)"))

    (community
     ("Are contributions being accepted currently?"
      "Should a ROADMAP.md be generated from this STATE.scm?"
      "Is there a Discord/Matrix/IRC for community discussion?"))))

;;;============================================================================
;;; LONG-TERM ROADMAP
;;;============================================================================

(define long-term-roadmap
  '((post-v1
     ((v1.1
       ((name . "Enhanced Analytics")
        (items
         ("Predictive issue resolution time"
          "Contributor burnout detection"
          "Code churn anomaly alerts"
          "Cross-repo dependency graphs"))))

      (v1.2
       ((name . "Advanced Security")
        (items
         ("Full post-quantum cryptography"
          "Hardware security key support"
          "Audit logging with XTDB temporal queries"
          "SBOM generation and verification"))))

      (v1.3
       ((name . "Enterprise Features")
        (items
         ("LDAP/SAML/OIDC authentication"
          "Role-based access control"
          "Organization-wide dashboards"
          "Compliance reporting"))))

      (v2.0
       ((name . "Plugin Ecosystem")
        (items
         ("Widget marketplace launch"
          "Custom adapter SDK"
          "Webhook integrations"
          "API v2 with breaking changes"))))))

    (vision-items
     ("Universal project manager integration (hyperpolymath/Universal-Project-Manager)"
      "Academic workflow suite integration (hyperpolymath/Academic-Workflow-Suite)"
      "robot-vacuum-cleaner auto-cleanup integration"
      "AI-assisted code review with attestation"
      "Cross-platform notification unification"
      "Mobile companion app (potentially via Capacitor)"
      "Federated gitvisor instances for organizations"
      "GraphQL federation for multi-instance queries"))

    (research-tracks
     ((formal-verification
       ((description . "Extend SPARK proofs to more critical paths")
        (tools . "GNATprove, SPARK Pro")))

      (performance
       ((description . "Sub-100ms dashboard load times at scale")
        (tools . "Flame graphs, LiveView optimizations")))

      (accessibility
       ((description . "WCAG 2.1 AA compliance for all interfaces")
        (tools . "axe-core, manual testing")))))))

;;;============================================================================
;;; CRITICAL NEXT ACTIONS
;;;============================================================================

(define critical-next-actions
  '((immediate
     (("Complete GraphQL type definitions" . high)
      ("Add ExUnit tests for crypto module" . high)
      ("Wire Julia analytics to GraphQL resolver" . high)
      ("Implement dashboard widget persistence" . medium)
      ("Complete Api.res frontend queries" . medium)))

    (this-week
     (("Reach 50% test coverage on backend" . high)
      ("Document Julia-Elixir integration approach" . medium)
      ("Create missing GraphQL types" . high)
      ("Fix frontend-backend type alignment" . medium)))

    (this-month
     (("Complete v0.2 milestone (dashboard customization)" . high)
      ("Begin v0.3 milestone (analytics integration)" . medium)
      ("Evaluate post-quantum crypto libraries" . low)
      ("Set up project website with Zola" . low)))))

;;;============================================================================
;;; SESSION HISTORY
;;;============================================================================

(define session-history
  '((snapshots
     ((date . "2025-12-08")
      (session . "initial-state-analysis")
      (accomplishments
       ("Comprehensive codebase exploration"
        "Identified 48 source files across polyglot stack"
        "Mapped completion percentages per component"
        "Documented all blockers and gaps"
        "Created initial STATE.scm"))
      (notes . "First STATE.scm checkpoint created")))))

;;;============================================================================
;;; HELPER FUNCTIONS (for Guile evaluation)
;;;============================================================================

(define (get-completion-percentage component)
  "Get completion percentage for a component"
  (let ((comp (assoc component (cdr (assoc 'components current-position)))))
    (if comp
        (cdr (assoc 'completion (cdr comp)))
        #f)))

(define (get-blockers priority)
  "Get blockers by priority level"
  (cdr (assoc priority blockers-and-issues)))

(define (get-milestone version)
  "Get milestone details by version"
  (assoc version (cdr (assoc 'milestones route-to-mvp))))

(define (list-all-questions)
  "List all questions for maintainer"
  (apply append (map cdr questions-for-maintainer)))

;;;============================================================================
;;; EXPORT SUMMARY
;;;============================================================================

(define state-summary
  '((project . "gitvisor")
    (version . "0.1.0")
    (overall-completion . 55)
    (next-milestone . "v0.2 - Dashboard Customization")
    (critical-blockers . 0)
    (high-priority-issues . 3)
    (open-questions . 16)
    (updated . "2025-12-08")))

;;; End of STATE.scm
